;; Auto-generated. Do not edit!


(when (boundp 'piksi_rtk_msgs::VelocityWithCovariance)
  (if (not (find-package "PIKSI_RTK_MSGS"))
    (make-package "PIKSI_RTK_MSGS"))
  (shadow 'VelocityWithCovariance (find-package "PIKSI_RTK_MSGS")))
(unless (find-package "PIKSI_RTK_MSGS::VELOCITYWITHCOVARIANCE")
  (make-package "PIKSI_RTK_MSGS::VELOCITYWITHCOVARIANCE"))

(in-package "ROS")
;;//! \htmlinclude VelocityWithCovariance.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass piksi_rtk_msgs::VelocityWithCovariance
  :super ros::object
  :slots (_velocity _covariance ))

(defmethod piksi_rtk_msgs::VelocityWithCovariance
  (:init
   (&key
    ((:velocity __velocity) (instance geometry_msgs::Vector3 :init))
    ((:covariance __covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _velocity __velocity)
   (setq _covariance __covariance)
   self)
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:covariance
   (&optional __covariance)
   (if __covariance (setq _covariance __covariance)) _covariance)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _velocity
    (send _velocity :serialization-length)
    ;; float64[9] _covariance
    (* 8    9)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _velocity
       (send _velocity :serialize s)
     ;; float64[9] _covariance
     (dotimes (i 9)
       (sys::poke (elt _covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; float64[9] _covariance
   (dotimes (i (length _covariance))
     (setf (elt _covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get piksi_rtk_msgs::VelocityWithCovariance :md5sum-) "92d56e6b7d2b9f7aaa781fc9160e6263")
(setf (get piksi_rtk_msgs::VelocityWithCovariance :datatype-) "piksi_rtk_msgs/VelocityWithCovariance")
(setf (get piksi_rtk_msgs::VelocityWithCovariance :definition-)
      "geometry_msgs/Vector3 velocity
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



(provide :piksi_rtk_msgs/VelocityWithCovariance "92d56e6b7d2b9f7aaa781fc9160e6263")


