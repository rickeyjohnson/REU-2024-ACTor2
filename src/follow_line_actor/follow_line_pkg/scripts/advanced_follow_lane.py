#!/usr/bin/env python3
import rospy
from sensor_msgs.msg import Image
from std_msgs.msg import Empty
from cv_bridge import CvBridge, CvBridgeError
from dynamic_reconfigure.server import Server
from follow_line_pkg.cfg import FollowLineConfig  # packageName.cfg
from geometry_msgs.msg import Twist
import cv2 as cv
import numpy as np
from sklearn.cluster import DBSCAN
# from scipy.cluster.hierarchy import linkage, fcluster
# from sklearn.cluster import KMeans

# global variables
vel_msg = Twist()
bridge = CvBridge()
# speed = 0
# drive = False
velocity_pub = None
empty_msg = Empty()


# dynamic reconfigure
def dyn_rcfg_cb(config, level):
  global thresh, speed, drive
  thresh = config.thresh
  speed = config.speed
  drive = config.enable_drive
  return config # must return config

# compute lines and follow lane
def compute_lines(rows, cols, image):


    # add median blur to emphasize white lines 
    image = cv.medianBlur(image, 5)

    # mask white pixels
    gray = cv.cvtColor(image, cv.COLOR_BGR2GRAY)
    _, thresh = cv.threshold(gray, 210, 255, cv.THRESH_BINARY)

    # canny filtering to get edges
    edges = cv.Canny(thresh, 50, 150, 3)

    # get list of lines
    lines = cv.HoughLinesP(edges, 3, np.pi / 180, threshold=20, minLineLength=10, maxLineGap=10)
    
    # empty image to draw filtered lines
    line_image = np.zeros_like(image)

    # filter out lines with a small slope
    if lines is not None:
        for line in lines:

            x1, y1, x2, y2 = line[0]
            dx = x2 - x1
            dy = y2 - y1
            if dx == 0: 
                slope = float('inf')
            else:
                slope = dy / dx

            if abs(slope) >= 0.4:
                cv.line(line_image, (x1, y1), (x2, y2), (255, 255, 255), 2)

    # make lines thicker
    #element = cv.getStructuringElement(cv.MORPH_RECT, (5,5))
    #line_image = cv.dilate(line_image, element)
    cv.imshow("canny", line_image)

    # get white points
    points = np.column_stack(np.where(line_image > 0))   
    
    if len(points) == 0:
        print("No white pixels detected.")
        return image

    # downsample the points uniformly for clustering
    downsample_factor = 10
    points = points[::downsample_factor]

    # perform density based clustering
    dbscan = DBSCAN(eps=140, min_samples=3)
    clusters = dbscan.fit_predict(points)

    # get the two largest clusters 
    unique_labels, counts = np.unique(clusters, return_counts=True)
    sorted_clusters = sorted(list(zip(unique_labels, counts)), key=lambda x: -x[1])
    largest_labels = [sorted_clusters[i][0] for i in range(min(2, len(sorted_clusters)))]
    colors = [(0, 255, 0), (0, 0, 255)]
    label_to_color = {label: colors[i] for i, label in enumerate(largest_labels)}

    if len(unique_labels) < 2:
        print("a")
        return None
    
    lane_centroids = []
    # for each cluster fit a 2nd degree polynomial 
    for label in largest_labels:

        lane_points = points[clusters == label]
        lane_points = lane_points[np.argsort(lane_points[:, 1])]

        coefficients = np.polyfit(lane_points[:, 0], lane_points[:, 1], deg=2)
        polynomial = np.poly1d(coefficients)

        x_values = np.linspace(0, cols, num=100)
        y_values = polynomial(x_values).astype(int)
        # for p in lane_points:
        #     cv.circle(image, (int(p[1]), int(p[0])), 5, label_to_color[label], -1)
        for i in range(len(y_values) - 1):
            cv.line(image, (int(y_values[i]), int(x_values[i])), 
                    (int(y_values[i+1]), int(x_values[i+1])), label_to_color[label], 5)
        
        centroid_x = np.mean(lane_points[:, 1]) 
        lane_centroids.append(centroid_x)

    # get cx from the average of the two clusters' centroids
    if len(lane_centroids) == 2:
        cx = int(np.mean(lane_centroids))
        cv.circle(image, (cols // 2, rows // 2), 5, (0, 0, 0), -1)
        cv.arrowedLine(image, (cols // 2, rows // 2), (cx, rows // 2), (255, 255, 255), 3)
    else:
        cx = cols // 2 

    # display image with lanes
    cv.imshow("White Points", image)
    cv.waitKey(3)

    return cx


def image_callback(ros_image):
    global bridge, vel_msg, speed, drive, velocity_pub
    try:
        cv_image = bridge.imgmsg_to_cv2(ros_image, "bgr8")
    except CvBridgeError as e:
        rospy.logerr(f"CvBridge Error: {e}")
        return

    # remove top of image
    rows1, cols1, _ = cv_image.shape
    cv_image = cv_image[rows1 // 2:,cols1//6:]
    rows, cols, _ = cv_image.shape

    mymask = np.zeros((rows, cols), dtype="uint8")
    myROI = [(cols // 2, 0), (0,(rows // 4)),(0,rows),(cols, rows), (cols, (rows //4)), (cols, 0)]
    cv.fillPoly(mymask, [np.array(myROI)], 255)
    cv_image = cv.bitwise_and(cv_image, cv_image, mask = mymask)

    image = cv_image.copy()

    # compute lines and obtain cx
    cx = compute_lines(rows, cols, image)

    if cx:
        mid = cols / 2
        if drive:
        #     vel_msg.linear.x = 1.5
        # else:
        #     vel_msg.linear.x = 0

            final_speed = speed - 1.75 * (abs((cx - mid) / (cols // 2)) * speed)

            # linear_threshold1 = 50
            # linear_threshold2 = 80
            # if abs(cx - mid) < linear_threshold1:
            #     vel_msg.linear.x = 2.0
            # elif abs(cx - mid) < linear_threshold2:
            #     vel_msg.linear.x = 1.5 
            # else:
            #     vel_msg.linear.x = 1.0
            vel_msg.linear.x = final_speed

        # angular_threshold = 10
        # if mid < cx - angular_threshold:
        #     vel_msg.angular.z = -abs(1.2 * (mid - cx) / mid)
        # elif mid > cx + angular_threshold:
        #     vel_msg.angular.z = abs(1.2 * (mid - cx) / mid)
        # else:
        #     vel_msg.angular.z = 0

            tolerance = 10
            p  = abs(0.8 * (mid - cx) / mid)                  # best formula for angular velocity
            if cx > mid + tolerance:          # if the center of the line is to the right of the center of the image
                vel_msg.angular.z = -p
            elif cx < mid - tolerance:        # if the center of the line is to the left of the center of the image
                vel_msg.angular.z = p
            else:
                vel_msg.angular.z = 0
        else:
            vel_msg.linear.x = 0
            vel_msg.angular.z = 0

    # publish changes
    velocity_pub.publish(vel_msg)
    enable_pub.publish(empty_msg)

# main method
if __name__ == '__main__':
  rospy.init_node('advanced_follow_lane', anonymous=True) # initialize node
  imgtopic = rospy.get_param("~imgtopic_name") # private name
  rospy.Subscriber(imgtopic, Image, image_callback) # subscribe to image (so that image_callback can be called every time an image is published)
  enable_pub = rospy.Publisher('/vehicle/enable', Empty, queue_size=1)      # publish to enable (to enable the robot)
  velocity_pub = rospy.Publisher('/vehicle/cmd_vel', Twist, queue_size=1)   # publish to cmd_vel (to move the robot)
  srv = Server(FollowLineConfig, dyn_rcfg_cb) # create dynamic reconfigure server that calls dyn_rcfg_cb function every time a parameter is changed

  try:
    rospy.spin()
  except rospy.ROSInterruptException:
    pass