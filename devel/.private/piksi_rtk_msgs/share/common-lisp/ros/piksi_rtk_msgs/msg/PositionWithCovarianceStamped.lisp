; Auto-generated. Do not edit!


(cl:in-package piksi_rtk_msgs-msg)


;//! \htmlinclude PositionWithCovarianceStamped.msg.html

(cl:defclass <PositionWithCovarianceStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (position
    :reader position
    :initarg :position
    :type piksi_rtk_msgs-msg:PositionWithCovariance
    :initform (cl:make-instance 'piksi_rtk_msgs-msg:PositionWithCovariance)))
)

(cl:defclass PositionWithCovarianceStamped (<PositionWithCovarianceStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionWithCovarianceStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionWithCovarianceStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name piksi_rtk_msgs-msg:<PositionWithCovarianceStamped> is deprecated: use piksi_rtk_msgs-msg:PositionWithCovarianceStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PositionWithCovarianceStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:header-val is deprecated.  Use piksi_rtk_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <PositionWithCovarianceStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:position-val is deprecated.  Use piksi_rtk_msgs-msg:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionWithCovarianceStamped>) ostream)
  "Serializes a message object of type '<PositionWithCovarianceStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionWithCovarianceStamped>) istream)
  "Deserializes a message object of type '<PositionWithCovarianceStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionWithCovarianceStamped>)))
  "Returns string type for a message object of type '<PositionWithCovarianceStamped>"
  "piksi_rtk_msgs/PositionWithCovarianceStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionWithCovarianceStamped)))
  "Returns string type for a message object of type 'PositionWithCovarianceStamped"
  "piksi_rtk_msgs/PositionWithCovarianceStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionWithCovarianceStamped>)))
  "Returns md5sum for a message object of type '<PositionWithCovarianceStamped>"
  "8a563e78c9db9c3702ffc2635534bd52")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionWithCovarianceStamped)))
  "Returns md5sum for a message object of type 'PositionWithCovarianceStamped"
  "8a563e78c9db9c3702ffc2635534bd52")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionWithCovarianceStamped>)))
  "Returns full string definition for message of type '<PositionWithCovarianceStamped>"
  (cl:format cl:nil "std_msgs/Header header~%piksi_rtk_msgs/PositionWithCovariance position~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: piksi_rtk_msgs/PositionWithCovariance~%geometry_msgs/Point position~%float64[9] covariance~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionWithCovarianceStamped)))
  "Returns full string definition for message of type 'PositionWithCovarianceStamped"
  (cl:format cl:nil "std_msgs/Header header~%piksi_rtk_msgs/PositionWithCovariance position~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: piksi_rtk_msgs/PositionWithCovariance~%geometry_msgs/Point position~%float64[9] covariance~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionWithCovarianceStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionWithCovarianceStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionWithCovarianceStamped
    (cl:cons ':header (header msg))
    (cl:cons ':position (position msg))
))
