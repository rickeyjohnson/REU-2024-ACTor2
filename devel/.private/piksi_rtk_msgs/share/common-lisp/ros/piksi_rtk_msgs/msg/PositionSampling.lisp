; Auto-generated. Do not edit!


(cl:in-package piksi_rtk_msgs-msg)


;//! \htmlinclude PositionSampling.msg.html

(cl:defclass <PositionSampling> (roslisp-msg-protocol:ros-message)
  ((progress
    :reader progress
    :initarg :progress
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PositionSampling (<PositionSampling>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionSampling>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionSampling)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name piksi_rtk_msgs-msg:<PositionSampling> is deprecated: use piksi_rtk_msgs-msg:PositionSampling instead.")))

(cl:ensure-generic-function 'progress-val :lambda-list '(m))
(cl:defmethod progress-val ((m <PositionSampling>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:progress-val is deprecated.  Use piksi_rtk_msgs-msg:progress instead.")
  (progress m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionSampling>) ostream)
  "Serializes a message object of type '<PositionSampling>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'progress)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionSampling>) istream)
  "Deserializes a message object of type '<PositionSampling>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'progress)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionSampling>)))
  "Returns string type for a message object of type '<PositionSampling>"
  "piksi_rtk_msgs/PositionSampling")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionSampling)))
  "Returns string type for a message object of type 'PositionSampling"
  "piksi_rtk_msgs/PositionSampling")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionSampling>)))
  "Returns md5sum for a message object of type '<PositionSampling>"
  "d0ccee79f15d1d61b42a87d5f604edbc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionSampling)))
  "Returns md5sum for a message object of type 'PositionSampling"
  "d0ccee79f15d1d61b42a87d5f604edbc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionSampling>)))
  "Returns full string definition for message of type '<PositionSampling>"
  (cl:format cl:nil "# This message shows details about the position sampling process.~%~%uint8 progress # Percentage 0..100~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionSampling)))
  "Returns full string definition for message of type 'PositionSampling"
  (cl:format cl:nil "# This message shows details about the position sampling process.~%~%uint8 progress # Percentage 0..100~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionSampling>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionSampling>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionSampling
    (cl:cons ':progress (progress msg))
))
