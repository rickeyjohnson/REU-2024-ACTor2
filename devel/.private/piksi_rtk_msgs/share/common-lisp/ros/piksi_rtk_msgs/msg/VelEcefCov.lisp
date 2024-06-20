; Auto-generated. Do not edit!


(cl:in-package piksi_rtk_msgs-msg)


;//! \htmlinclude VelEcefCov.msg.html

(cl:defclass <VelEcefCov> (roslisp-msg-protocol:ros-message)
  ((tow
    :reader tow
    :initarg :tow
    :type cl:integer
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0)
   (z
    :reader z
    :initarg :z
    :type cl:integer
    :initform 0)
   (cov_x_x
    :reader cov_x_x
    :initarg :cov_x_x
    :type cl:float
    :initform 0.0)
   (cov_x_y
    :reader cov_x_y
    :initarg :cov_x_y
    :type cl:float
    :initform 0.0)
   (cov_x_z
    :reader cov_x_z
    :initarg :cov_x_z
    :type cl:float
    :initform 0.0)
   (cov_y_y
    :reader cov_y_y
    :initarg :cov_y_y
    :type cl:float
    :initform 0.0)
   (cov_y_z
    :reader cov_y_z
    :initarg :cov_y_z
    :type cl:float
    :initform 0.0)
   (cov_z_z
    :reader cov_z_z
    :initarg :cov_z_z
    :type cl:float
    :initform 0.0)
   (n_sats
    :reader n_sats
    :initarg :n_sats
    :type cl:fixnum
    :initform 0)
   (flags
    :reader flags
    :initarg :flags
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VelEcefCov (<VelEcefCov>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VelEcefCov>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VelEcefCov)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name piksi_rtk_msgs-msg:<VelEcefCov> is deprecated: use piksi_rtk_msgs-msg:VelEcefCov instead.")))

(cl:ensure-generic-function 'tow-val :lambda-list '(m))
(cl:defmethod tow-val ((m <VelEcefCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:tow-val is deprecated.  Use piksi_rtk_msgs-msg:tow instead.")
  (tow m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <VelEcefCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:x-val is deprecated.  Use piksi_rtk_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <VelEcefCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:y-val is deprecated.  Use piksi_rtk_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <VelEcefCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:z-val is deprecated.  Use piksi_rtk_msgs-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'cov_x_x-val :lambda-list '(m))
(cl:defmethod cov_x_x-val ((m <VelEcefCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:cov_x_x-val is deprecated.  Use piksi_rtk_msgs-msg:cov_x_x instead.")
  (cov_x_x m))

(cl:ensure-generic-function 'cov_x_y-val :lambda-list '(m))
(cl:defmethod cov_x_y-val ((m <VelEcefCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:cov_x_y-val is deprecated.  Use piksi_rtk_msgs-msg:cov_x_y instead.")
  (cov_x_y m))

(cl:ensure-generic-function 'cov_x_z-val :lambda-list '(m))
(cl:defmethod cov_x_z-val ((m <VelEcefCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:cov_x_z-val is deprecated.  Use piksi_rtk_msgs-msg:cov_x_z instead.")
  (cov_x_z m))

(cl:ensure-generic-function 'cov_y_y-val :lambda-list '(m))
(cl:defmethod cov_y_y-val ((m <VelEcefCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:cov_y_y-val is deprecated.  Use piksi_rtk_msgs-msg:cov_y_y instead.")
  (cov_y_y m))

(cl:ensure-generic-function 'cov_y_z-val :lambda-list '(m))
(cl:defmethod cov_y_z-val ((m <VelEcefCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:cov_y_z-val is deprecated.  Use piksi_rtk_msgs-msg:cov_y_z instead.")
  (cov_y_z m))

(cl:ensure-generic-function 'cov_z_z-val :lambda-list '(m))
(cl:defmethod cov_z_z-val ((m <VelEcefCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:cov_z_z-val is deprecated.  Use piksi_rtk_msgs-msg:cov_z_z instead.")
  (cov_z_z m))

(cl:ensure-generic-function 'n_sats-val :lambda-list '(m))
(cl:defmethod n_sats-val ((m <VelEcefCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:n_sats-val is deprecated.  Use piksi_rtk_msgs-msg:n_sats instead.")
  (n_sats m))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <VelEcefCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:flags-val is deprecated.  Use piksi_rtk_msgs-msg:flags instead.")
  (flags m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VelEcefCov>)))
    "Constants for message type '<VelEcefCov>"
  '((:VEL_MODE_INVALID . 0)
    (:VEL_MODE_MEAS_DOPPLER . 1)
    (:VEL_MODE_DERIVED_DOPPLER . 2)
    (:VEL_MODE_DEAD_RECKONING . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VelEcefCov)))
    "Constants for message type 'VelEcefCov"
  '((:VEL_MODE_INVALID . 0)
    (:VEL_MODE_MEAS_DOPPLER . 1)
    (:VEL_MODE_DERIVED_DOPPLER . 2)
    (:VEL_MODE_DEAD_RECKONING . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VelEcefCov>) ostream)
  "Serializes a message object of type '<VelEcefCov>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tow)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'z)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cov_x_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cov_x_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cov_x_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cov_y_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cov_y_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cov_z_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'n_sats)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VelEcefCov>) istream)
  "Deserializes a message object of type '<VelEcefCov>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tow)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tow)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tow)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tow)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'z) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cov_x_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cov_x_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cov_x_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cov_y_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cov_y_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cov_z_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'n_sats)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VelEcefCov>)))
  "Returns string type for a message object of type '<VelEcefCov>"
  "piksi_rtk_msgs/VelEcefCov")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelEcefCov)))
  "Returns string type for a message object of type 'VelEcefCov"
  "piksi_rtk_msgs/VelEcefCov")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VelEcefCov>)))
  "Returns md5sum for a message object of type '<VelEcefCov>"
  "3b1a393d40744915fd3904d558c780af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VelEcefCov)))
  "Returns md5sum for a message object of type 'VelEcefCov"
  "3b1a393d40744915fd3904d558c780af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VelEcefCov>)))
  "Returns full string definition for message of type '<VelEcefCov>"
  (cl:format cl:nil "# This message reports the velocity in local North East Down (NED) coordinates.~%# The NED coordinate system is defined as the local WGS84 tangent plane centered~%# at the current position. The full GPS time is given by the preceding MSG GPS~%# TIME with the matching time-of-week (tow). This message is similar to the MSG~%# VEL NED, but it includes the upper triangular portion of the 3x3 covariance~%# matrix.~%~%uint32 tow          # GPS Time of Week.~%int32 x             # Velocity North coordinate [mm/s].~%int32 y             # Velocity East coordinate [mm/s].~%int32 z             # Velocity Down coordinate [mm/s].~%float32 cov_x_x     # Estimated variance of x [m^2/s^2].~%float32 cov_x_y     # Estimated covariance of x and y [m^2/s^2].~%float32 cov_x_z     # Estimated covariance of x and z [m^2/s^2].~%float32 cov_y_y     # Estimated variance of y [m^2/s^2].~%float32 cov_y_z     # Estimated covariance of y and z [m^2/s^2].~%float32 cov_z_z     # Estimated variance of z [m^2/s^2].~%uint8 n_sats        # Number of satellites used in solution.~%uint8 flags         # Status flags~%~%uint8 VEL_MODE_INVALID = 0~%uint8 VEL_MODE_MEAS_DOPPLER = 1~%uint8 VEL_MODE_DERIVED_DOPPLER = 2~%uint8 VEL_MODE_DEAD_RECKONING = 3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VelEcefCov)))
  "Returns full string definition for message of type 'VelEcefCov"
  (cl:format cl:nil "# This message reports the velocity in local North East Down (NED) coordinates.~%# The NED coordinate system is defined as the local WGS84 tangent plane centered~%# at the current position. The full GPS time is given by the preceding MSG GPS~%# TIME with the matching time-of-week (tow). This message is similar to the MSG~%# VEL NED, but it includes the upper triangular portion of the 3x3 covariance~%# matrix.~%~%uint32 tow          # GPS Time of Week.~%int32 x             # Velocity North coordinate [mm/s].~%int32 y             # Velocity East coordinate [mm/s].~%int32 z             # Velocity Down coordinate [mm/s].~%float32 cov_x_x     # Estimated variance of x [m^2/s^2].~%float32 cov_x_y     # Estimated covariance of x and y [m^2/s^2].~%float32 cov_x_z     # Estimated covariance of x and z [m^2/s^2].~%float32 cov_y_y     # Estimated variance of y [m^2/s^2].~%float32 cov_y_z     # Estimated covariance of y and z [m^2/s^2].~%float32 cov_z_z     # Estimated variance of z [m^2/s^2].~%uint8 n_sats        # Number of satellites used in solution.~%uint8 flags         # Status flags~%~%uint8 VEL_MODE_INVALID = 0~%uint8 VEL_MODE_MEAS_DOPPLER = 1~%uint8 VEL_MODE_DERIVED_DOPPLER = 2~%uint8 VEL_MODE_DEAD_RECKONING = 3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VelEcefCov>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VelEcefCov>))
  "Converts a ROS message object to a list"
  (cl:list 'VelEcefCov
    (cl:cons ':tow (tow msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':cov_x_x (cov_x_x msg))
    (cl:cons ':cov_x_y (cov_x_y msg))
    (cl:cons ':cov_x_z (cov_x_z msg))
    (cl:cons ':cov_y_y (cov_y_y msg))
    (cl:cons ':cov_y_z (cov_y_z msg))
    (cl:cons ':cov_z_z (cov_z_z msg))
    (cl:cons ':n_sats (n_sats msg))
    (cl:cons ':flags (flags msg))
))
