;; Auto-generated. Do not edit!


(when (boundp 'piksi_rtk_msgs::ExtEvent)
  (if (not (find-package "PIKSI_RTK_MSGS"))
    (make-package "PIKSI_RTK_MSGS"))
  (shadow 'ExtEvent (find-package "PIKSI_RTK_MSGS")))
(unless (find-package "PIKSI_RTK_MSGS::EXTEVENT")
  (make-package "PIKSI_RTK_MSGS::EXTEVENT"))

(in-package "ROS")
;;//! \htmlinclude ExtEvent.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*PIN_VALUE_LOW*" (find-package "PIKSI_RTK_MSGS::EXTEVENT"))
(shadow '*PIN_VALUE_LOW* (find-package "PIKSI_RTK_MSGS::EXTEVENT"))
(defconstant piksi_rtk_msgs::ExtEvent::*PIN_VALUE_LOW* 0)
(intern "*PIN_VALUE_HIGH*" (find-package "PIKSI_RTK_MSGS::EXTEVENT"))
(shadow '*PIN_VALUE_HIGH* (find-package "PIKSI_RTK_MSGS::EXTEVENT"))
(defconstant piksi_rtk_msgs::ExtEvent::*PIN_VALUE_HIGH* 1)
(intern "*QUALITY_UNKNOWN*" (find-package "PIKSI_RTK_MSGS::EXTEVENT"))
(shadow '*QUALITY_UNKNOWN* (find-package "PIKSI_RTK_MSGS::EXTEVENT"))
(defconstant piksi_rtk_msgs::ExtEvent::*QUALITY_UNKNOWN* 0)
(intern "*QUALITY_GOOD*" (find-package "PIKSI_RTK_MSGS::EXTEVENT"))
(shadow '*QUALITY_GOOD* (find-package "PIKSI_RTK_MSGS::EXTEVENT"))
(defconstant piksi_rtk_msgs::ExtEvent::*QUALITY_GOOD* 1)

(defun piksi_rtk_msgs::ExtEvent-to-symbol (const)
  (cond
        ((= const 0) 'piksi_rtk_msgs::ExtEvent::*PIN_VALUE_LOW*)
        ((= const 1) 'piksi_rtk_msgs::ExtEvent::*PIN_VALUE_HIGH*)
        ((= const 0) 'piksi_rtk_msgs::ExtEvent::*QUALITY_UNKNOWN*)
        ((= const 1) 'piksi_rtk_msgs::ExtEvent::*QUALITY_GOOD*)
        (t nil)))

(defclass piksi_rtk_msgs::ExtEvent
  :super ros::object
  :slots (_stamp _pin_value _quality _pin ))

(defmethod piksi_rtk_msgs::ExtEvent
  (:init
   (&key
    ((:stamp __stamp) (instance std_msgs::Time :init))
    ((:pin_value __pin_value) nil)
    ((:quality __quality) nil)
    ((:pin __pin) 0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _pin_value __pin_value)
   (setq _quality __quality)
   (setq _pin (round __pin))
   self)
  (:stamp
   (&rest __stamp)
   (if (keywordp (car __stamp))
       (send* _stamp __stamp)
     (progn
       (if __stamp (setq _stamp (car __stamp)))
       _stamp)))
  (:pin_value
   (&optional (__pin_value :null))
   (if (not (eq __pin_value :null)) (setq _pin_value __pin_value)) _pin_value)
  (:quality
   (&optional (__quality :null))
   (if (not (eq __quality :null)) (setq _quality __quality)) _quality)
  (:pin
   (&optional __pin)
   (if __pin (setq _pin __pin)) _pin)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Time _stamp
    (send _stamp :serialization-length)
    ;; bool _pin_value
    1
    ;; bool _quality
    1
    ;; uint8 _pin
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Time _stamp
       (send _stamp :serialize s)
     ;; bool _pin_value
       (if _pin_value (write-byte -1 s) (write-byte 0 s))
     ;; bool _quality
       (if _quality (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _pin
       (write-byte _pin s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Time _stamp
     (send _stamp :deserialize buf ptr-) (incf ptr- (send _stamp :serialization-length))
   ;; bool _pin_value
     (setq _pin_value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _quality
     (setq _quality (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _pin
     (setq _pin (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get piksi_rtk_msgs::ExtEvent :md5sum-) "7e621795083c9af53b654fd825b99ec0")
(setf (get piksi_rtk_msgs::ExtEvent :datatype-) "piksi_rtk_msgs/ExtEvent")
(setf (get piksi_rtk_msgs::ExtEvent :definition-)
      "# Reports detection of an external event, the GPS time it occurred, which pin it
# was and whether it was rising or falling.

# Modified to contain ROS time.

std_msgs/Time stamp
bool pin_value
bool quality
uint8 pin

uint8 PIN_VALUE_LOW   = 0   # Falling edge.
uint8 PIN_VALUE_HIGH  = 1   # Rising edge
uint8 QUALITY_UNKNOWN = 0   # No NAV solution.
uint8 QUALITY_GOOD    = 1   # 1 Microsecond accuracy.

================================================================================
MSG: std_msgs/Time
time data

")



(provide :piksi_rtk_msgs/ExtEvent "7e621795083c9af53b654fd825b99ec0")


