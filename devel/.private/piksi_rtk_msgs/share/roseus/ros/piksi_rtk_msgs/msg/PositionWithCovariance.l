;; Auto-generated. Do not edit!


(when (boundp 'piksi_rtk_msgs::PositionWithCovariance)
  (if (not (find-package "PIKSI_RTK_MSGS"))
    (make-package "PIKSI_RTK_MSGS"))
  (shadow 'PositionWithCovariance (find-package "PIKSI_RTK_MSGS")))
(unless (find-package "PIKSI_RTK_MSGS::POSITIONWITHCOVARIANCE")
  (make-package "PIKSI_RTK_MSGS::POSITIONWITHCOVARIANCE"))

(in-package "ROS")
;;//! \htmlinclude PositionWithCovariance.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass piksi_rtk_msgs::PositionWithCovariance
  :super ros::object
  :slots (_position _covariance ))

(defmethod piksi_rtk_msgs::PositionWithCovariance
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:covariance __covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _position __position)
   (setq _covariance __covariance)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:covariance
   (&optional __covariance)
   (if __covariance (setq _covariance __covariance)) _covariance)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; float64[9] _covariance
    (* 8    9)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; float64[9] _covariance
     (dotimes (i 9)
       (sys::poke (elt _covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64[9] _covariance
   (dotimes (i (length _covariance))
     (setf (elt _covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get piksi_rtk_msgs::PositionWithCovariance :md5sum-) "a6c3298f48dbe12e3bb3539524548bf0")
(setf (get piksi_rtk_msgs::PositionWithCovariance :datatype-) "piksi_rtk_msgs/PositionWithCovariance")
(setf (get piksi_rtk_msgs::PositionWithCovariance :definition-)
      "geometry_msgs/Point position
float64[9] covariance

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :piksi_rtk_msgs/PositionWithCovariance "a6c3298f48dbe12e3bb3539524548bf0")


