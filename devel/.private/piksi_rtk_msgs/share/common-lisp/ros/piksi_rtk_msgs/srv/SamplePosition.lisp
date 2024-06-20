; Auto-generated. Do not edit!


(cl:in-package piksi_rtk_msgs-srv)


;//! \htmlinclude SamplePosition-request.msg.html

(cl:defclass <SamplePosition-request> (roslisp-msg-protocol:ros-message)
  ((num_desired_fixes
    :reader num_desired_fixes
    :initarg :num_desired_fixes
    :type cl:integer
    :initform 0)
   (file
    :reader file
    :initarg :file
    :type cl:string
    :initform "")
   (set_enu
    :reader set_enu
    :initarg :set_enu
    :type cl:boolean
    :initform cl:nil)
   (offset_z
    :reader offset_z
    :initarg :offset_z
    :type cl:float
    :initform 0.0))
)

(cl:defclass SamplePosition-request (<SamplePosition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SamplePosition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SamplePosition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name piksi_rtk_msgs-srv:<SamplePosition-request> is deprecated: use piksi_rtk_msgs-srv:SamplePosition-request instead.")))

(cl:ensure-generic-function 'num_desired_fixes-val :lambda-list '(m))
(cl:defmethod num_desired_fixes-val ((m <SamplePosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-srv:num_desired_fixes-val is deprecated.  Use piksi_rtk_msgs-srv:num_desired_fixes instead.")
  (num_desired_fixes m))

(cl:ensure-generic-function 'file-val :lambda-list '(m))
(cl:defmethod file-val ((m <SamplePosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-srv:file-val is deprecated.  Use piksi_rtk_msgs-srv:file instead.")
  (file m))

(cl:ensure-generic-function 'set_enu-val :lambda-list '(m))
(cl:defmethod set_enu-val ((m <SamplePosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-srv:set_enu-val is deprecated.  Use piksi_rtk_msgs-srv:set_enu instead.")
  (set_enu m))

(cl:ensure-generic-function 'offset_z-val :lambda-list '(m))
(cl:defmethod offset_z-val ((m <SamplePosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-srv:offset_z-val is deprecated.  Use piksi_rtk_msgs-srv:offset_z instead.")
  (offset_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SamplePosition-request>) ostream)
  "Serializes a message object of type '<SamplePosition-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_desired_fixes)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_desired_fixes)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_desired_fixes)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_desired_fixes)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_enu) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'offset_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SamplePosition-request>) istream)
  "Deserializes a message object of type '<SamplePosition-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_desired_fixes)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_desired_fixes)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_desired_fixes)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_desired_fixes)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'set_enu) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'offset_z) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SamplePosition-request>)))
  "Returns string type for a service object of type '<SamplePosition-request>"
  "piksi_rtk_msgs/SamplePositionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SamplePosition-request)))
  "Returns string type for a service object of type 'SamplePosition-request"
  "piksi_rtk_msgs/SamplePositionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SamplePosition-request>)))
  "Returns md5sum for a message object of type '<SamplePosition-request>"
  "d61ca547d7fe6fd48751a949f576f865")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SamplePosition-request)))
  "Returns md5sum for a message object of type 'SamplePosition-request"
  "d61ca547d7fe6fd48751a949f576f865")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SamplePosition-request>)))
  "Returns full string definition for message of type '<SamplePosition-request>"
  (cl:format cl:nil "uint32 num_desired_fixes~%string file~%bool set_enu~%float64 offset_z # Height of survey pole that will be subtracted from survey.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SamplePosition-request)))
  "Returns full string definition for message of type 'SamplePosition-request"
  (cl:format cl:nil "uint32 num_desired_fixes~%string file~%bool set_enu~%float64 offset_z # Height of survey pole that will be subtracted from survey.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SamplePosition-request>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'file))
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SamplePosition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SamplePosition-request
    (cl:cons ':num_desired_fixes (num_desired_fixes msg))
    (cl:cons ':file (file msg))
    (cl:cons ':set_enu (set_enu msg))
    (cl:cons ':offset_z (offset_z msg))
))
;//! \htmlinclude SamplePosition-response.msg.html

(cl:defclass <SamplePosition-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SamplePosition-response (<SamplePosition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SamplePosition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SamplePosition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name piksi_rtk_msgs-srv:<SamplePosition-response> is deprecated: use piksi_rtk_msgs-srv:SamplePosition-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SamplePosition-response>) ostream)
  "Serializes a message object of type '<SamplePosition-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SamplePosition-response>) istream)
  "Deserializes a message object of type '<SamplePosition-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SamplePosition-response>)))
  "Returns string type for a service object of type '<SamplePosition-response>"
  "piksi_rtk_msgs/SamplePositionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SamplePosition-response)))
  "Returns string type for a service object of type 'SamplePosition-response"
  "piksi_rtk_msgs/SamplePositionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SamplePosition-response>)))
  "Returns md5sum for a message object of type '<SamplePosition-response>"
  "d61ca547d7fe6fd48751a949f576f865")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SamplePosition-response)))
  "Returns md5sum for a message object of type 'SamplePosition-response"
  "d61ca547d7fe6fd48751a949f576f865")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SamplePosition-response>)))
  "Returns full string definition for message of type '<SamplePosition-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SamplePosition-response)))
  "Returns full string definition for message of type 'SamplePosition-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SamplePosition-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SamplePosition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SamplePosition-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SamplePosition)))
  'SamplePosition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SamplePosition)))
  'SamplePosition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SamplePosition)))
  "Returns string type for a service object of type '<SamplePosition>"
  "piksi_rtk_msgs/SamplePosition")