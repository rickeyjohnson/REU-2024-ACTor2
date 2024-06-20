;; Auto-generated. Do not edit!


(when (boundp 'piksi_rtk_msgs::EnuOrigin)
  (if (not (find-package "PIKSI_RTK_MSGS"))
    (make-package "PIKSI_RTK_MSGS"))
  (shadow 'EnuOrigin (find-package "PIKSI_RTK_MSGS")))
(unless (find-package "PIKSI_RTK_MSGS::ENUORIGIN")
  (make-package "PIKSI_RTK_MSGS::ENUORIGIN"))
(unless (find-package "PIKSI_RTK_MSGS::ENUORIGINREQUEST")
  (make-package "PIKSI_RTK_MSGS::ENUORIGINREQUEST"))
(unless (find-package "PIKSI_RTK_MSGS::ENUORIGINRESPONSE")
  (make-package "PIKSI_RTK_MSGS::ENUORIGINRESPONSE"))

(in-package "ROS")





(defclass piksi_rtk_msgs::EnuOriginRequest
  :super ros::object
  :slots (_lat _lon _alt ))

(defmethod piksi_rtk_msgs::EnuOriginRequest
  (:init
   (&key
    ((:lat __lat) 0.0)
    ((:lon __lon) 0.0)
    ((:alt __alt) 0.0)
    )
   (send-super :init)
   (setq _lat (float __lat))
   (setq _lon (float __lon))
   (setq _alt (float __alt))
   self)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:alt
   (&optional __alt)
   (if __alt (setq _alt __alt)) _alt)
  (:serialization-length
   ()
   (+
    ;; float64 _lat
    8
    ;; float64 _lon
    8
    ;; float64 _alt
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon
       (sys::poke _lon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _alt
       (sys::poke _alt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _lat
     (setq _lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon
     (setq _lon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _alt
     (setq _alt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass piksi_rtk_msgs::EnuOriginResponse
  :super ros::object
  :slots ())

(defmethod piksi_rtk_msgs::EnuOriginResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass piksi_rtk_msgs::EnuOrigin
  :super ros::object
  :slots ())

(setf (get piksi_rtk_msgs::EnuOrigin :md5sum-) "800b265188e13fdc7e121024d9b6fa27")
(setf (get piksi_rtk_msgs::EnuOrigin :datatype-) "piksi_rtk_msgs/EnuOrigin")
(setf (get piksi_rtk_msgs::EnuOrigin :request) piksi_rtk_msgs::EnuOriginRequest)
(setf (get piksi_rtk_msgs::EnuOrigin :response) piksi_rtk_msgs::EnuOriginResponse)

(defmethod piksi_rtk_msgs::EnuOriginRequest
  (:response () (instance piksi_rtk_msgs::EnuOriginResponse :init)))

(setf (get piksi_rtk_msgs::EnuOriginRequest :md5sum-) "800b265188e13fdc7e121024d9b6fa27")
(setf (get piksi_rtk_msgs::EnuOriginRequest :datatype-) "piksi_rtk_msgs/EnuOriginRequest")
(setf (get piksi_rtk_msgs::EnuOriginRequest :definition-)
      "float64 lat
float64 lon
float64 alt
---

")

(setf (get piksi_rtk_msgs::EnuOriginResponse :md5sum-) "800b265188e13fdc7e121024d9b6fa27")
(setf (get piksi_rtk_msgs::EnuOriginResponse :datatype-) "piksi_rtk_msgs/EnuOriginResponse")
(setf (get piksi_rtk_msgs::EnuOriginResponse :definition-)
      "float64 lat
float64 lon
float64 alt
---

")



(provide :piksi_rtk_msgs/EnuOrigin "800b265188e13fdc7e121024d9b6fa27")


