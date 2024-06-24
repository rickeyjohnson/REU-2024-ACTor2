; Auto-generated. Do not edit!


(cl:in-package piksi_rtk_msgs-msg)


;//! \htmlinclude ExtEvent.msg.html

(cl:defclass <ExtEvent> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type std_msgs-msg:Time
    :initform (cl:make-instance 'std_msgs-msg:Time))
   (pin_value
    :reader pin_value
    :initarg :pin_value
    :type cl:boolean
    :initform cl:nil)
   (quality
    :reader quality
    :initarg :quality
    :type cl:boolean
    :initform cl:nil)
   (pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ExtEvent (<ExtEvent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExtEvent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExtEvent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name piksi_rtk_msgs-msg:<ExtEvent> is deprecated: use piksi_rtk_msgs-msg:ExtEvent instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <ExtEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:stamp-val is deprecated.  Use piksi_rtk_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'pin_value-val :lambda-list '(m))
(cl:defmethod pin_value-val ((m <ExtEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:pin_value-val is deprecated.  Use piksi_rtk_msgs-msg:pin_value instead.")
  (pin_value m))

(cl:ensure-generic-function 'quality-val :lambda-list '(m))
(cl:defmethod quality-val ((m <ExtEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:quality-val is deprecated.  Use piksi_rtk_msgs-msg:quality instead.")
  (quality m))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <ExtEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:pin-val is deprecated.  Use piksi_rtk_msgs-msg:pin instead.")
  (pin m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ExtEvent>)))
    "Constants for message type '<ExtEvent>"
  '((:PIN_VALUE_LOW . 0)
    (:PIN_VALUE_HIGH . 1)
    (:QUALITY_UNKNOWN . 0)
    (:QUALITY_GOOD . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ExtEvent)))
    "Constants for message type 'ExtEvent"
  '((:PIN_VALUE_LOW . 0)
    (:PIN_VALUE_HIGH . 1)
    (:QUALITY_UNKNOWN . 0)
    (:QUALITY_GOOD . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExtEvent>) ostream)
  "Serializes a message object of type '<ExtEvent>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stamp) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pin_value) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'quality) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExtEvent>) istream)
  "Deserializes a message object of type '<ExtEvent>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stamp) istream)
    (cl:setf (cl:slot-value msg 'pin_value) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'quality) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExtEvent>)))
  "Returns string type for a message object of type '<ExtEvent>"
  "piksi_rtk_msgs/ExtEvent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExtEvent)))
  "Returns string type for a message object of type 'ExtEvent"
  "piksi_rtk_msgs/ExtEvent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExtEvent>)))
  "Returns md5sum for a message object of type '<ExtEvent>"
  "7e621795083c9af53b654fd825b99ec0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExtEvent)))
  "Returns md5sum for a message object of type 'ExtEvent"
  "7e621795083c9af53b654fd825b99ec0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExtEvent>)))
  "Returns full string definition for message of type '<ExtEvent>"
  (cl:format cl:nil "# Reports detection of an external event, the GPS time it occurred, which pin it~%# was and whether it was rising or falling.~%~%# Modified to contain ROS time.~%~%std_msgs/Time stamp~%bool pin_value~%bool quality~%uint8 pin~%~%uint8 PIN_VALUE_LOW   = 0   # Falling edge.~%uint8 PIN_VALUE_HIGH  = 1   # Rising edge~%uint8 QUALITY_UNKNOWN = 0   # No NAV solution.~%uint8 QUALITY_GOOD    = 1   # 1 Microsecond accuracy.~%~%================================================================================~%MSG: std_msgs/Time~%time data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExtEvent)))
  "Returns full string definition for message of type 'ExtEvent"
  (cl:format cl:nil "# Reports detection of an external event, the GPS time it occurred, which pin it~%# was and whether it was rising or falling.~%~%# Modified to contain ROS time.~%~%std_msgs/Time stamp~%bool pin_value~%bool quality~%uint8 pin~%~%uint8 PIN_VALUE_LOW   = 0   # Falling edge.~%uint8 PIN_VALUE_HIGH  = 1   # Rising edge~%uint8 QUALITY_UNKNOWN = 0   # No NAV solution.~%uint8 QUALITY_GOOD    = 1   # 1 Microsecond accuracy.~%~%================================================================================~%MSG: std_msgs/Time~%time data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExtEvent>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stamp))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExtEvent>))
  "Converts a ROS message object to a list"
  (cl:list 'ExtEvent
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':pin_value (pin_value msg))
    (cl:cons ':quality (quality msg))
    (cl:cons ':pin (pin msg))
))
