;; Auto-generated. Do not edit!


(when (boundp 'piksi_rtk_msgs::PositionSampling)
  (if (not (find-package "PIKSI_RTK_MSGS"))
    (make-package "PIKSI_RTK_MSGS"))
  (shadow 'PositionSampling (find-package "PIKSI_RTK_MSGS")))
(unless (find-package "PIKSI_RTK_MSGS::POSITIONSAMPLING")
  (make-package "PIKSI_RTK_MSGS::POSITIONSAMPLING"))

(in-package "ROS")
;;//! \htmlinclude PositionSampling.msg.html


(defclass piksi_rtk_msgs::PositionSampling
  :super ros::object
  :slots (_progress ))

(defmethod piksi_rtk_msgs::PositionSampling
  (:init
   (&key
    ((:progress __progress) 0)
    )
   (send-super :init)
   (setq _progress (round __progress))
   self)
  (:progress
   (&optional __progress)
   (if __progress (setq _progress __progress)) _progress)
  (:serialization-length
   ()
   (+
    ;; uint8 _progress
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _progress
       (write-byte _progress s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _progress
     (setq _progress (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get piksi_rtk_msgs::PositionSampling :md5sum-) "d0ccee79f15d1d61b42a87d5f604edbc")
(setf (get piksi_rtk_msgs::PositionSampling :datatype-) "piksi_rtk_msgs/PositionSampling")
(setf (get piksi_rtk_msgs::PositionSampling :definition-)
      "# This message shows details about the position sampling process.

uint8 progress # Percentage 0..100

")



(provide :piksi_rtk_msgs/PositionSampling "d0ccee79f15d1d61b42a87d5f604edbc")


