#!/usr/bin/env python3

import rospy
#import cv2 as cv
#import numpy as np

from std_msgs.msg import Empty
from geometry_msgs.msg import Twist
from dataspeed_ulc_msgs.msg import UlcReport

# DurationDrive class definition
class DurationDrive():
    def __init__(self):
        """Node to drive a given distance"""

        # Initialize distance variables
        self.distance = 0.0
        self.prev_time = rospy.Time.now()

        # Define enable message
        self.msg_empty_cmd = Empty()
        
        # Define twist message
        self.msg_twist_cmd = Twist()
        self.msg_twist_cmd.linear.x = 0
        self.msg_twist_cmd.angular.z = 0

        # Define publishers
        self.pub_enable_cmd =  rospy.Publisher('/vehicle/enable',
                                               Empty, queue_size=1)
        
        self.pub_twist_cmd = rospy.Publisher('/vehicle/cmd_vel',
                                             Twist, queue_size=1)

        # Define ULC subscriber
        self.sub_ulc_report =  rospy.Subscriber('/vehicle/ulc_report',
                                                UlcReport,
                                                self.ulc_report_callback)

        # Define ROS rate
        self.rate = rospy.Rate(20) # Default rate

        # Get input from user
        veh_speed = float(input("Enter the vehicle speed (m/s): "))
        veh_yaw = float(input("Enter the vehicle yaw rate (rad/s): "))
        target_dist = float(input("Enter the distance to travel (m): "))
        
        
        # Loop and publish commands to vehicle
        time_start = rospy.Time.now()
        dt = 0.0
        time_stop = 2

        rospy.loginfo('Starting Timer...')
        while( not rospy.is_shutdown()):

            # Compute dt
            dt = (rospy.Time.now() - time_start).to_sec()

            # Hold vehicle in place
            if( dt <  time_stop ):
                rospy.loginfo('Initializing...')
                self.msg_twist_cmd.linear.x = 0
                self.msg_twist_cmd.angular.z = 0
                self.distance = 0.0

            elif( self.distance < target_dist ):
                rospy.loginfo('Traveling: %.2f / %.2f' % ( self.distance,
                                                         target_dist ))
                self.msg_twist_cmd.linear.x = veh_speed
                self.msg_twist_cmd.angular.z = veh_yaw

            else:
                rospy.loginfo('Distance traveled...')
                self.msg_twist_cmd.linear.x = 0
                self.msg_twist_cmd.angular.z = 0
                
                
            # Publish enable message
            self.pub_enable_cmd.publish(self.msg_empty_cmd)

            # Publish
            self.pub_twist_cmd.publish(self.msg_twist_cmd)

            # Sleep for time step
            self.rate.sleep()

        return

    #################
    # ULC  Callback
    #################
    def ulc_report_callback(self, data):
        """Callback function to compute the distance traveled"""

        curr_time = rospy.Time.now()
        dt = curr_time - self.prev_time
        self.distance = self.distance + data.speed_meas*dt.to_sec()
        self.prev_time = curr_time
        
        return
    

#################    
# Main function
#################
if __name__ == '__main__':
    
    # Initialize the node and name it.
    rospy.init_node('duration_drive_node')
    print("Duration Drive node initialized")
    
    # Start tester
    try:
        DurationDrive()
    except rospy.ROSInterruptException:
        pass



    
