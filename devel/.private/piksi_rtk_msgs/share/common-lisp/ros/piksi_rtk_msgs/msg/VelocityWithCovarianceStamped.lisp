; Auto-generated. Do not edit!


(cl:in-package piksi_rtk_msgs-msg)


;//! \htmlinclude VelocityWithCovarianceStamped.msg.html

(cl:defclass <VelocityWithCovarianceStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (velocity
    :reader velocity
    :initarg :velocity
    :type piksi_rtk_msgs-msg:VelocityWithCovariance
    :initform (cl:make-instance 'piksi_rtk_msgs-msg:VelocityWithCovariance)))
)

(cl:defclass VelocityWithCovarianceStamped (<VelocityWithCovarianceStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VelocityWithCovarianceStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VelocityWithCovarianceStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name piksi_rtk_msgs-msg:<VelocityWithCovarianceStamped> is deprecated: use piksi_rtk_msgs-msg:VelocityWithCovarianceStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VelocityWithCovarianceStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:header-val is deprecated.  Use piksi_rtk_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <VelocityWithCovarianceStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:velocity-val is deprecated.  Use piksi_rtk_msgs-msg:velocity instead.")
  (velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VelocityWithCovarianceStamped>) ostream)
  "Serializes a message object of type '<VelocityWithCovarianceStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VelocityWithCovarianceStamped>) istream)
  "Deserializes a message object of type '<VelocityWithCovarianceStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VelocityWithCovarianceStamped>)))
  "Returns string type for a message object of type '<VelocityWithCovarianceStamped>"
  "piksi_rtk_msgs/VelocityWithCovarianceStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelocityWithCovarianceStamped)))
  "Returns string type for a message object of type 'VelocityWithCovarianceStamped"
  "piksi_rtk_msgs/VelocityWithCovarianceStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VelocityWithCovarianceStamped>)))
  "Returns md5sum for a message object of type '<VelocityWithCovarianceStamped>"
  "345aa9558455b2ffa8428e67646ae0c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VelocityWithCovarianceStamped)))
  "Returns md5sum for a message object of type 'VelocityWithCovarianceStamped"
  "345aa9558455b2ffa8428e67646ae0c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VelocityWithCovarianceStamped>)))
  "Returns full string definition for message of type '<VelocityWithCovarianceStamped>"
  (cl:format cl:nil "std_msgs/Header header~%piksi_rtk_msgs/VelocityWithCovariance velocity~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: piksi_rtk_msgs/VelocityWithCovariance~%geometry_msgs/Vector3 velocity~%float64[9] covariance~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VelocityWithCovarianceStamped)))
  "Returns full string definition for message of type 'VelocityWithCovarianceStamped"
  (cl:format cl:nil "std_msgs/Header header~%piksi_rtk_msgs/VelocityWithCovariance velocity~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: piksi_rtk_msgs/VelocityWithCovariance~%geometry_msgs/Vector3 velocity~%float64[9] covariance~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VelocityWithCovarianceStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VelocityWithCovarianceStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'VelocityWithCovarianceStamped
    (cl:cons ':header (header msg))
    (cl:cons ':velocity (velocity msg))
))
