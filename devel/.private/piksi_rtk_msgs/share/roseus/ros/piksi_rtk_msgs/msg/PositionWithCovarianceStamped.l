;; Auto-generated. Do not edit!


(when (boundp 'piksi_rtk_msgs::PositionWithCovarianceStamped)
  (if (not (find-package "PIKSI_RTK_MSGS"))
    (make-package "PIKSI_RTK_MSGS"))
  (shadow 'PositionWithCovarianceStamped (find-package "PIKSI_RTK_MSGS")))
(unless (find-package "PIKSI_RTK_MSGS::POSITIONWITHCOVARIANCESTAMPED")
  (make-package "PIKSI_RTK_MSGS::POSITIONWITHCOVARIANCESTAMPED"))

(in-package "ROS")
;;//! \htmlinclude PositionWithCovarianceStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass piksi_rtk_msgs::PositionWithCovarianceStamped
  :super ros::object
  :slots (_header _position ))

(defmethod piksi_rtk_msgs::PositionWithCovarianceStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:position __position) (instance piksi_rtk_msgs::PositionWithCovariance :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _position __position)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; piksi_rtk_msgs/PositionWithCovariance _position
    (send _position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; piksi_rtk_msgs/PositionWithCovariance _position
       (send _position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; piksi_rtk_msgs/PositionWithCovariance _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;;
   self)
  )

(setf (get piksi_rtk_msgs::PositionWithCovarianceStamped :md5sum-) "8a563e78c9db9c3702ffc2635534bd52")
(setf (get piksi_rtk_msgs::PositionWithCovarianceStamped :datatype-) "piksi_rtk_msgs/PositionWithCovarianceStamped")
(setf (get piksi_rtk_msgs::PositionWithCovarianceStamped :definition-)
      "std_msgs/Header header
piksi_rtk_msgs/PositionWithCovariance position

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: piksi_rtk_msgs/PositionWithCovariance
geometry_msgs/Point position
float64[9] covariance

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :piksi_rtk_msgs/PositionWithCovarianceStamped "8a563e78c9db9c3702ffc2635534bd52")


