;; Auto-generated. Do not edit!


(when (boundp 'piksi_rtk_msgs::SamplePosition)
  (if (not (find-package "PIKSI_RTK_MSGS"))
    (make-package "PIKSI_RTK_MSGS"))
  (shadow 'SamplePosition (find-package "PIKSI_RTK_MSGS")))
(unless (find-package "PIKSI_RTK_MSGS::SAMPLEPOSITION")
  (make-package "PIKSI_RTK_MSGS::SAMPLEPOSITION"))
(unless (find-package "PIKSI_RTK_MSGS::SAMPLEPOSITIONREQUEST")
  (make-package "PIKSI_RTK_MSGS::SAMPLEPOSITIONREQUEST"))
(unless (find-package "PIKSI_RTK_MSGS::SAMPLEPOSITIONRESPONSE")
  (make-package "PIKSI_RTK_MSGS::SAMPLEPOSITIONRESPONSE"))

(in-package "ROS")





(defclass piksi_rtk_msgs::SamplePositionRequest
  :super ros::object
  :slots (_num_desired_fixes _file _set_enu _offset_z ))

(defmethod piksi_rtk_msgs::SamplePositionRequest
  (:init
   (&key
    ((:num_desired_fixes __num_desired_fixes) 0)
    ((:file __file) "")
    ((:set_enu __set_enu) nil)
    ((:offset_z __offset_z) 0.0)
    )
   (send-super :init)
   (setq _num_desired_fixes (round __num_desired_fixes))
   (setq _file (string __file))
   (setq _set_enu __set_enu)
   (setq _offset_z (float __offset_z))
   self)
  (:num_desired_fixes
   (&optional __num_desired_fixes)
   (if __num_desired_fixes (setq _num_desired_fixes __num_desired_fixes)) _num_desired_fixes)
  (:file
   (&optional __file)
   (if __file (setq _file __file)) _file)
  (:set_enu
   (&optional (__set_enu :null))
   (if (not (eq __set_enu :null)) (setq _set_enu __set_enu)) _set_enu)
  (:offset_z
   (&optional __offset_z)
   (if __offset_z (setq _offset_z __offset_z)) _offset_z)
  (:serialization-length
   ()
   (+
    ;; uint32 _num_desired_fixes
    4
    ;; string _file
    4 (length _file)
    ;; bool _set_enu
    1
    ;; float64 _offset_z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _num_desired_fixes
       (write-long _num_desired_fixes s)
     ;; string _file
       (write-long (length _file) s) (princ _file s)
     ;; bool _set_enu
       (if _set_enu (write-byte -1 s) (write-byte 0 s))
     ;; float64 _offset_z
       (sys::poke _offset_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _num_desired_fixes
     (setq _num_desired_fixes (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _file
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _set_enu
     (setq _set_enu (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _offset_z
     (setq _offset_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass piksi_rtk_msgs::SamplePositionResponse
  :super ros::object
  :slots ())

(defmethod piksi_rtk_msgs::SamplePositionResponse
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

(defclass piksi_rtk_msgs::SamplePosition
  :super ros::object
  :slots ())

(setf (get piksi_rtk_msgs::SamplePosition :md5sum-) "d61ca547d7fe6fd48751a949f576f865")
(setf (get piksi_rtk_msgs::SamplePosition :datatype-) "piksi_rtk_msgs/SamplePosition")
(setf (get piksi_rtk_msgs::SamplePosition :request) piksi_rtk_msgs::SamplePositionRequest)
(setf (get piksi_rtk_msgs::SamplePosition :response) piksi_rtk_msgs::SamplePositionResponse)

(defmethod piksi_rtk_msgs::SamplePositionRequest
  (:response () (instance piksi_rtk_msgs::SamplePositionResponse :init)))

(setf (get piksi_rtk_msgs::SamplePositionRequest :md5sum-) "d61ca547d7fe6fd48751a949f576f865")
(setf (get piksi_rtk_msgs::SamplePositionRequest :datatype-) "piksi_rtk_msgs/SamplePositionRequest")
(setf (get piksi_rtk_msgs::SamplePositionRequest :definition-)
      "uint32 num_desired_fixes
string file
bool set_enu
float64 offset_z # Height of survey pole that will be subtracted from survey.
---

")

(setf (get piksi_rtk_msgs::SamplePositionResponse :md5sum-) "d61ca547d7fe6fd48751a949f576f865")
(setf (get piksi_rtk_msgs::SamplePositionResponse :datatype-) "piksi_rtk_msgs/SamplePositionResponse")
(setf (get piksi_rtk_msgs::SamplePositionResponse :definition-)
      "uint32 num_desired_fixes
string file
bool set_enu
float64 offset_z # Height of survey pole that will be subtracted from survey.
---

")



(provide :piksi_rtk_msgs/SamplePosition "d61ca547d7fe6fd48751a949f576f865")


