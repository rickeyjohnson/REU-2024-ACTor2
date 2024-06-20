; Auto-generated. Do not edit!


(cl:in-package piksi_rtk_msgs-srv)


;//! \htmlinclude EnuOrigin-request.msg.html

(cl:defclass <EnuOrigin-request> (roslisp-msg-protocol:ros-message)
  ((lat
    :reader lat
    :initarg :lat
    :type cl:float
    :initform 0.0)
   (lon
    :reader lon
    :initarg :lon
    :type cl:float
    :initform 0.0)
   (alt
    :reader alt
    :initarg :alt
    :type cl:float
    :initform 0.0))
)

(cl:defclass EnuOrigin-request (<EnuOrigin-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnuOrigin-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnuOrigin-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name piksi_rtk_msgs-srv:<EnuOrigin-request> is deprecated: use piksi_rtk_msgs-srv:EnuOrigin-request instead.")))

(cl:ensure-generic-function 'lat-val :lambda-list '(m))
(cl:defmethod lat-val ((m <EnuOrigin-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-srv:lat-val is deprecated.  Use piksi_rtk_msgs-srv:lat instead.")
  (lat m))

(cl:ensure-generic-function 'lon-val :lambda-list '(m))
(cl:defmethod lon-val ((m <EnuOrigin-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-srv:lon-val is deprecated.  Use piksi_rtk_msgs-srv:lon instead.")
  (lon m))

(cl:ensure-generic-function 'alt-val :lambda-list '(m))
(cl:defmethod alt-val ((m <EnuOrigin-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-srv:alt-val is deprecated.  Use piksi_rtk_msgs-srv:alt instead.")
  (alt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnuOrigin-request>) ostream)
  "Serializes a message object of type '<EnuOrigin-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lon))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'alt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnuOrigin-request>) istream)
  "Deserializes a message object of type '<EnuOrigin-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lat) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lon) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'alt) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnuOrigin-request>)))
  "Returns string type for a service object of type '<EnuOrigin-request>"
  "piksi_rtk_msgs/EnuOriginRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnuOrigin-request)))
  "Returns string type for a service object of type 'EnuOrigin-request"
  "piksi_rtk_msgs/EnuOriginRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnuOrigin-request>)))
  "Returns md5sum for a message object of type '<EnuOrigin-request>"
  "800b265188e13fdc7e121024d9b6fa27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnuOrigin-request)))
  "Returns md5sum for a message object of type 'EnuOrigin-request"
  "800b265188e13fdc7e121024d9b6fa27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnuOrigin-request>)))
  "Returns full string definition for message of type '<EnuOrigin-request>"
  (cl:format cl:nil "float64 lat~%float64 lon~%float64 alt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnuOrigin-request)))
  "Returns full string definition for message of type 'EnuOrigin-request"
  (cl:format cl:nil "float64 lat~%float64 lon~%float64 alt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnuOrigin-request>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnuOrigin-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EnuOrigin-request
    (cl:cons ':lat (lat msg))
    (cl:cons ':lon (lon msg))
    (cl:cons ':alt (alt msg))
))
;//! \htmlinclude EnuOrigin-response.msg.html

(cl:defclass <EnuOrigin-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass EnuOrigin-response (<EnuOrigin-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnuOrigin-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnuOrigin-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name piksi_rtk_msgs-srv:<EnuOrigin-response> is deprecated: use piksi_rtk_msgs-srv:EnuOrigin-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnuOrigin-response>) ostream)
  "Serializes a message object of type '<EnuOrigin-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnuOrigin-response>) istream)
  "Deserializes a message object of type '<EnuOrigin-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnuOrigin-response>)))
  "Returns string type for a service object of type '<EnuOrigin-response>"
  "piksi_rtk_msgs/EnuOriginResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnuOrigin-response)))
  "Returns string type for a service object of type 'EnuOrigin-response"
  "piksi_rtk_msgs/EnuOriginResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnuOrigin-response>)))
  "Returns md5sum for a message object of type '<EnuOrigin-response>"
  "800b265188e13fdc7e121024d9b6fa27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnuOrigin-response)))
  "Returns md5sum for a message object of type 'EnuOrigin-response"
  "800b265188e13fdc7e121024d9b6fa27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnuOrigin-response>)))
  "Returns full string definition for message of type '<EnuOrigin-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnuOrigin-response)))
  "Returns full string definition for message of type 'EnuOrigin-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnuOrigin-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnuOrigin-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EnuOrigin-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EnuOrigin)))
  'EnuOrigin-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EnuOrigin)))
  'EnuOrigin-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnuOrigin)))
  "Returns string type for a service object of type '<EnuOrigin>"
  "piksi_rtk_msgs/EnuOrigin")