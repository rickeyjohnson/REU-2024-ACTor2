;; Auto-generated. Do not edit!


(when (boundp 'piksi_rtk_msgs::VelocityWithCovarianceStamped)
  (if (not (find-package "PIKSI_RTK_MSGS"))
    (make-package "PIKSI_RTK_MSGS"))
  (shadow 'VelocityWithCovarianceStamped (find-package "PIKSI_RTK_MSGS")))
(unless (find-package "PIKSI_RTK_MSGS::VELOCITYWITHCOVARIANCESTAMPED")
  (make-package "PIKSI_RTK_MSGS::VELOCITYWITHCOVARIANCESTAMPED"))

(in-package "ROS")
;;//! \htmlinclude VelocityWithCovarianceStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass piksi_rtk_msgs::VelocityWithCovarianceStamped
  :super ros::object
  :slots (_header _velocity ))

(defmethod piksi_rtk_msgs::VelocityWithCovarianceStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:velocity __velocity) (instance piksi_rtk_msgs::VelocityWithCovariance :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _velocity __velocity)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; piksi_rtk_msgs/VelocityWithCovariance _velocity
    (send _velocity :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; piksi_rtk_msgs/VelocityWithCovariance _velocity
       (send _velocity :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; piksi_rtk_msgs/VelocityWithCovariance _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;;
   self)
  )

(setf (get piksi_rtk_msgs::VelocityWithCovarianceStamped :md5sum-) "345aa9558455b2ffa8428e67646ae0c7")
(setf (get piksi_rtk_msgs::VelocityWithCovarianceStamped :datatype-) "piksi_rtk_msgs/VelocityWithCovarianceStamped")
(setf (get piksi_rtk_msgs::VelocityWithCovarianceStamped :definition-)
      "std_msgs/Header header
piksi_rtk_msgs/VelocityWithCovariance velocity

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
MSG: piksi_rtk_msgs/VelocityWithCovariance
geometry_msgs/Vector3 velocity
float64[9] covariance

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :piksi_rtk_msgs/VelocityWithCovarianceStamped "345aa9558455b2ffa8428e67646ae0c7")


