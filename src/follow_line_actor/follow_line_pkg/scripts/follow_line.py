#!/usr/bin/env python3
# Follow Line

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
    def __init__(self):
        self.bridge = CvBridge()
        self.vel_msg = Twist()
        self.empty_msg = Empty()
        self.enable_drive = False
        self.thresh = 127
        self.speed = 1.0

        rospy.init_node('follow_line', anonymous=True)
        imgtopic = rospy.get_param("~imgtopic_name")
        rospy.Subscriber(imgtopic, Image, self.image_callback)
        self.enable_pub = rospy.Publisher('/vehicle/enable', Empty, queue_size=1)
        self.velocity_pub = rospy.Publisher('/vehicle/cmd_vel', Twist, queue_size=1)
        srv = Server(FollowLineConfig, self.dyn_rcfg_cb)

    def dyn_rcfg_cb(self, config, level):
        self.thresh = config.thresh
        self.speed = config.speed
        self.enable_drive = config.enable_drive
        return config

    def image_callback(self, ros_image):
        global rows, cols
        try:
            cv_image = self.bridge.imgmsg_to_cv2(ros_image, "bgr8")
        except CvBridgeError as e:
            print(e)

        cv_image = cv2.resize(cv_image, None, fx=0.7, fy=0.7, interpolation=cv2.INTER_AREA)
        (rows, cols, _) = cv_image.shape
        cv_image = cv_image[rows // 2:, :int(cols * 3 / 4)]
        gray_image = cv2.cvtColor(cv_image, cv2.COLOR_BGR2GRAY)
        ret, bw_image = cv2.threshold(gray_image, self.thresh, 255, cv2.THRESH_BINARY)

        contours, hierarchy = cv2.findContours(bw_image, cv2.RETR_LIST, cv2.CHAIN_APPROX_SIMPLE)
        cv2.drawContours(cv_image, contours, -1, (0, 255, 0), thickness=2)

        if not contours:
            return

        max_area = 0
        best_contour = -1
        for c in contours:
            area = cv2.contourArea(c)
            if area > max_area:
                max_area = area
                best_contour = c

        try:
            cv2.drawContours(cv_image, best_contour, -1, (0, 0, 255), 10)
            M = cv2.moments(best_contour)
            cx, cy = int(M['m10'] / M['m00']), int(M['m01'] / M['m00'])
            self.drive_follow_line(cx, cy)
        except ZeroDivisionError:
            pass

        cv2.imshow("Contours along white line", cv_image)
        cv2.waitKey(3)

    def drive_follow_line(self, cx, cy):
        tolerance = 10
        mid = cols / 2

        if self.speed > 1.5:
            p = abs(0.8 * (mid - cx) / mid)
        else:
            p = abs(0.7 * (mid - cx) / mid)

        if self.enable_drive:
            self.vel_msg.linear.x = self.speed
            if cx > mid + tolerance:
                self.vel_msg.angular.z = -p
                self.velocity_pub.publish(self.vel_msg)
            elif cx < mid - tolerance:
                self.vel_msg.angular.z = p
                self.velocity_pub.publish(self.vel_msg)
            else:
                self.vel_msg.angular.z = 0
                self.velocity_pub.publish(self.vel_msg)
        else:
            self.vel_msg.linear.x = 0
            self.vel_msg.angular.z = 0
            self.velocity_pub.publish(self.vel_msg)

        self.enable_pub.publish(self.empty_msg)
        rospy.loginfo(f"linear velocity = {self.vel_msg.linear.x}  |  angular velocity = {self.vel_msg.angular.z}")

if __name__ == '__main__':
    follow_line = FollowLine()
    try:
        rospy.spin()
    except rospy.ROSInterruptException:
        pass