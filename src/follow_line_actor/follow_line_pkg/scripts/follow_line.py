#!/usr/bin/env python3
# Follow the line

import rospy
import cv2
from sensor_msgs.msg import Image
from std_msgs.msg import Empty
from cv_bridge import CvBridge, CvBridgeError
from dynamic_reconfigure.server import Server
from follow_line_pkg.cfg import FollowLineConfig
from geometry_msgs.msg import Twist
import numpy as np


class FollowLine:
    """
    A line detecting and following ROS node.
    """

    image_subcriber: rospy.Subscriber
    reset_publisher: rospy.Publisher
    velocity_publisher: rospy.Publisher
    reconf_srv: Server

    vel_msg: Twist
    empty_msg: Empty
    bridge: CvBridge

    thresh: int
    speed: float
    drive: bool

    def __init__(self):
        """
        Initializes a line-following ROS node.
        """
        rospy.init_node("follow_line", anonymous=True)
        imgtopic = rospy.get_param("~imgtopic_name")

        self.image_subscriber = rospy.Subscriber(imgtopic, Image, self.image_callback)
        self.reset_publisher = rospy.Publisher("/vehicle/enable", Empty, queue_size=1)
        self.velocity_publisher = rospy.Publisher(
            "/vehicle/cmd_vel", Twist, queue_size=1
        )
        self.reconf_srv = Server(FollowLineConfig, self.dyn_rcfg_cb)

        self.vel_msg = Twist()
        self.empty_msg = Empty()
        self.bridge = CvBridge()

        self.vel_msg.linear.x = 0
        self.vel_msg.angular.z = 0

        rospy.spin()

    # dynamic reconfigure callback function that updates the global variables: trhesh, speed, drive
    def dyn_rcfg_cb(self, config, level):
        self.thresh = config.thresh
        self.speed = config.speed
        self.drive = config.enable_drive
        return config  # must return config

    # image callback function
    def image_callback(self, ros_image):
        global bridge  # makes bridge available to all functions
        global rows, cols

        try:
            cv_image = self.bridge.imgmsg_to_cv2(
                ros_image, "bgr8"
            )  # convert ROS image to OpenCV image
        except CvBridgeError as e:
            print(e)
            exit(1)

        # drawing contours along the edges of the line
        cv_image = cv2.resize(
            cv_image, None, fx=0.7, fy=0.7, interpolation=cv2.INTER_AREA
        )
        (rows, cols, _) = cv_image.shape
        cv_image = cv_image[
            rows // 2 :, : int(cols * 3 / 4)
        ]  # get height and width of image
        gray_image = cv2.cvtColor(
            cv_image, cv2.COLOR_BGR2GRAY
        )  # convert image to grayscale
        bw_image = cv2.threshold(
            gray_image,  # input image
            self.thresh,  # threshold
            255,  # max value
            cv2.THRESH_BINARY,
        )[1]

        contours = cv2.findContours(bw_image, cv2.RETR_LIST, cv2.CHAIN_APPROX_SIMPLE)[0]
        cv2.drawContours(
            cv_image, contours, -1, (0, 255, 0), thickness=2
        )  # draw contours on original image

        if not contours:
            return

        # find the contour with the largest area
        max_area = 0
        best_contour = contours[0]
        for c in contours:
            area = cv2.contourArea(c)
            if area > max_area:
                max_area = area
                best_contour = c

        try:
            cv2.drawContours(cv_image, [best_contour], -1, (0, 0, 255), 10)
            M = cv2.moments(
                best_contour
            )  # find moments of contour, only one since only one line shown on the image at a time
        except ZeroDivisionError:
            rospy.logfatal("Attempted to divide by zero. Killing node...")
            exit(1)

        # draw center dot in middle of the line of the largest contour
        try:
            cx, cy = int(M["m10"] / M["m00"]), int(M["m01"] / M["m00"])
            cv2.circle(cv_image, (cx, cy), 10, (0, 0, 0), -1)
            self.drive_follow_line(cx)
        except ZeroDivisionError:
            pass

        cv2.imshow("Contours along white line", cv_image)  # show image
        cv2.waitKey(3)  # wait for 3ms to show image

    def drive_follow_line(self, cx):
        tolerance = 10
        mid = cols / 2

        if self.speed > 1.5:
            p = abs(0.8 * (mid - cx) / mid)  # best formula for angular velocity
        else:
            p = abs(0.7 * (mid - cx) / mid)  # best formula for angular velocity
        if self.drive == True:
            self.vel_msg.linear.x = self.speed
            if (
                cx > mid + tolerance
            ):  # if the center of the line is to the right of the center of the image
                self.vel_msg.angular.z = -p
                self.velocity_publisher.publish(self.vel_msg)
            elif (
                cx < mid - tolerance
            ):  # if the center of the line is to the left of the center of the image
                self.vel_msg.angular.z = p
                self.velocity_publisher.publish(self.vel_msg)
            else:
                self.vel_msg.angular.z = 0
                self.velocity_publisher.publish(self.vel_msg)
        else:
            self.vel_msg.linear.x = 0
            self.vel_msg.angular.z = 0
            self.velocity_publisher.publish(self.vel_msg)

        self.reset_publisher.publish(self.empty_msg)


if __name__ == "__main__":
    try:
        FollowLine()
    except rospy.ROSInterruptException:
        pass
