#!/usr/bin/env python3
# Follow the line

import rospy
import cv2
from sensor_msgs.msg import Image
from std_msgs.msg import Empty
from cv_bridge import CvBridge, CvBridgeError
from dynamic_reconfigure.server import Server
from follow_line_pkg.cfg import FollowLineConfig   # from package_name.cfg import cfgNameConfig
from geometry_msgs.msg import Twist
import numpy as np

vel_msg = Twist()       # create a twist message
empty_msg = Empty()
bridge = CvBridge()     # create a bridge

# dynamic reconfigure callback function that updates the global variables: trhesh, speed, drive
def dyn_rcfg_cb(config, level):
  global thresh, speed, drive
  thresh = config.thresh
  speed = config.speed
  drive = config.enable_drive
  return config # must return config

# image callback function
def image_callback(ros_image):
    global bridge # makes bridge available to all functions
    global rows, cols

    try:
        cv_image = bridge.imgmsg_to_cv2(ros_image, "bgr8")  # convert ROS image to OpenCV image
    except CvBridgeError as e:
       print(e)


    (rows, cols, _) = cv_image.shape 

    l_image = cv_image[:, :cols//2]
    r_image = cv_image[:, cols//2:]

    l_gray_image = cv2.cvtColor(l_image, cv2.COLOR_BGR2GRAY)             # convert image to grayscale
    r_gray_image = cv2.cvtColor(r_image, cv2.COLOR_BGR2GRAY)             # convert image to grayscale

    _, l_bw_image = cv2.threshold(l_gray_image,                           # input image
                                  thresh,                               # threshold
                                  255,                                  # max value
                                  cv2.THRESH_BINARY)                    # returns black and white image
    _, r_bw_image = cv2.threshold(r_gray_image,
                                  thresh,
                                  255,       
                                  cv2.THRESH_BINARY)                           # input image

    
    l_contours, hierarchy = cv2.findContours(l_bw_image, cv2.RETR_LIST, cv2.CHAIN_APPROX_SIMPLE)    # find contours
    r_contours, hierarchy = cv2.findContours(r_bw_image, cv2.RETR_LIST, cv2.CHAIN_APPROX_SIMPLE)    # find contours
    cv2.drawContours(cv_image, contours, -1, (0,255,0), thickness=2)                            # draw contours on original image

    if not l_contours or not r_contours:
       return

    # find the contour with the largest area
    max_area = 0
    best_contour = -1
    for c in contours:
       area = cv2.contourArea(c)
       if area > max_area:
          max_area = area
          best_contour = c

    try:
        cv2.drawContours(cv_image, best_contour, -1, (0,0,255), 10)
        M = cv2.moments(best_contour)                                       # find moments of contour, only one since only one line shown on the image at a time
    except ZeroDivisionError:
        pass

    # draw center dot in middle of the line of the largest contour    
    try:
        cx, cy = int(M['m10']/M['m00']) + 190, int(M['m01']/M['m00'])         # find center of contour
        cv2.circle(cv_image, (cx, cy), 10, (0,0,0), -1)                 # draw center dot at center of countour (cx, cy)
        drive_follow_line(cx, cy)
    except ZeroDivisionError:
        pass
         
    cv2.imshow("Contours along white line", cv_image)        # show image
    cv2.waitKey(3)                                           # wait for 3ms to show image

def drive_follow_line(cx, cy):
    tolerance = 10
    mid = cols / 2

    if speed > 1.5:
        p  = abs(0.8 * (mid - cx) / mid)                  # best formula for angular velocity
    else:
        p  = abs(0.7 * (mid - cx) / mid)                  # best formula for angular velocity
    if drive == True:
        vel_msg.linear.x = speed
        if cx > mid + tolerance:          # if the center of the line is to the right of the center of the image
            vel_msg.angular.z = -p
            velocity_pub.publish(vel_msg)
        elif cx < mid - tolerance:        # if the center of the line is to the left of the center of the image
            vel_msg.angular.z = p
            velocity_pub.publish(vel_msg)
        else:
            vel_msg.angular.z = 0
            velocity_pub.publish(vel_msg)
        rospy.loginfo(vel_msg.angular.z)
    else:
        vel_msg.linear.x = 0
        vel_msg.angular.z = 0
        velocity_pub.publish(vel_msg)

    enable_pub.publish(empty_msg)
   

if __name__ == '__main__':
  vel_msg.linear.x = 0
  vel_msg.angular.z = 0

  rospy.init_node('follow_line', anonymous=True) # initialize node
  imgtopic = rospy.get_param("~imgtopic_name") # private name
  rospy.Subscriber(imgtopic, Image, image_callback) # subscribe to image (so that image_callback can be called every time an image is published)
  enable_pub = rospy.Publisher('/vehicle/enable', Empty, queue_size=1)      # publish to enable (to enable the robot)
  velocity_pub = rospy.Publisher('/vehicle/cmd_vel', Twist, queue_size=1)   # publish to cmd_vel (to move the robot)
  srv = Server(FollowLineConfig, dyn_rcfg_cb) # create dynamic reconfigure server that calls dyn_rcfg_cb function every time a parameter is changed

  try:
    rospy.spin()
  except rospy.ROSInterruptException:
    pass