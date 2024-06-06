#!/usr/bin/env python3

import rospy
#import cv2 as cv
#import numpy as np

from std_msgs.msg import Empty
from geometry_msgs.msg import Twist

# DurationDrive class definition
class DurationDrive():
    def __init__(self):
        """Node to drive forward for a give time and speed"""

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


        # Define ROS rate
        self.rate = rospy.Rate(20) # Default rate

        # Get input from user
        veh_speed = float(input("Enter the vehicle speed (m/s): "))
        veh_yaw = float(input("Enter the vehicle yaw rate (rad/s): "))
        time_dur = float(input("Enter the duration of command (s): "))
        
        
        # Loop and publish commands to vehicle
        time_start = rospy.Time.now()
        dt = 0.0
        time_stop = 2
        
        rospy.loginfo('Starting Timer...')
        while( not rospy.is_shutdown()):

            # Compute dt
            dt = (rospy.Time.now() - time_start).to_sec()

            if( dt <  time_stop ):
                rospy.loginfo('Initializing...')
                self.msg_twist_cmd.linear.x = 0
                self.msg_twist_cmd.angular.z = 0
            elif( dt < time_dur + time_stop ):
                rospy.loginfo('Turning...')
                self.msg_twist_cmd.linear.x = veh_speed
                self.msg_twist_cmd.angular.z = veh_yaw
            else:
                rospy.loginfo('Time elasped...')
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



    
