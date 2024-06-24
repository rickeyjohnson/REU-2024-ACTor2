; Auto-generated. Do not edit!


(cl:in-package piksi_rtk_msgs-msg)


;//! \htmlinclude VelNedCov.msg.html

(cl:defclass <VelNedCov> (roslisp-msg-protocol:ros-message)
  ((tow
    :reader tow
    :initarg :tow
    :type cl:integer
    :initform 0)
   (n
    :reader n
    :initarg :n
    :type cl:integer
    :initform 0)
   (e
    :reader e
    :initarg :e
    :type cl:integer
    :initform 0)
   (d
    :reader d
    :initarg :d
    :type cl:integer
    :initform 0)
   (cov_n_n
    :reader cov_n_n
    :initarg :cov_n_n
    :type cl:float
    :initform 0.0)
   (cov_n_e
    :reader cov_n_e
    :initarg :cov_n_e
    :type cl:float
    :initform 0.0)
   (cov_n_d
    :reader cov_n_d
    :initarg :cov_n_d
    :type cl:float
    :initform 0.0)
   (cov_e_e
    :reader cov_e_e
    :initarg :cov_e_e
    :type cl:float
    :initform 0.0)
   (cov_e_d
    :reader cov_e_d
    :initarg :cov_e_d
    :type cl:float
    :initform 0.0)
   (cov_d_d
    :reader cov_d_d
    :initarg :cov_d_d
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

(cl:defclass VelNedCov (<VelNedCov>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VelNedCov>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VelNedCov)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name piksi_rtk_msgs-msg:<VelNedCov> is deprecated: use piksi_rtk_msgs-msg:VelNedCov instead.")))

(cl:ensure-generic-function 'tow-val :lambda-list '(m))
(cl:defmethod tow-val ((m <VelNedCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:tow-val is deprecated.  Use piksi_rtk_msgs-msg:tow instead.")
  (tow m))

(cl:ensure-generic-function 'n-val :lambda-list '(m))
(cl:defmethod n-val ((m <VelNedCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:n-val is deprecated.  Use piksi_rtk_msgs-msg:n instead.")
  (n m))

(cl:ensure-generic-function 'e-val :lambda-list '(m))
(cl:defmethod e-val ((m <VelNedCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:e-val is deprecated.  Use piksi_rtk_msgs-msg:e instead.")
  (e m))

(cl:ensure-generic-function 'd-val :lambda-list '(m))
(cl:defmethod d-val ((m <VelNedCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:d-val is deprecated.  Use piksi_rtk_msgs-msg:d instead.")
  (d m))

(cl:ensure-generic-function 'cov_n_n-val :lambda-list '(m))
(cl:defmethod cov_n_n-val ((m <VelNedCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:cov_n_n-val is deprecated.  Use piksi_rtk_msgs-msg:cov_n_n instead.")
  (cov_n_n m))

(cl:ensure-generic-function 'cov_n_e-val :lambda-list '(m))
(cl:defmethod cov_n_e-val ((m <VelNedCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:cov_n_e-val is deprecated.  Use piksi_rtk_msgs-msg:cov_n_e instead.")
  (cov_n_e m))

(cl:ensure-generic-function 'cov_n_d-val :lambda-list '(m))
(cl:defmethod cov_n_d-val ((m <VelNedCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:cov_n_d-val is deprecated.  Use piksi_rtk_msgs-msg:cov_n_d instead.")
  (cov_n_d m))

(cl:ensure-generic-function 'cov_e_e-val :lambda-list '(m))
(cl:defmethod cov_e_e-val ((m <VelNedCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:cov_e_e-val is deprecated.  Use piksi_rtk_msgs-msg:cov_e_e instead.")
  (cov_e_e m))

(cl:ensure-generic-function 'cov_e_d-val :lambda-list '(m))
(cl:defmethod cov_e_d-val ((m <VelNedCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:cov_e_d-val is deprecated.  Use piksi_rtk_msgs-msg:cov_e_d instead.")
  (cov_e_d m))

(cl:ensure-generic-function 'cov_d_d-val :lambda-list '(m))
(cl:defmethod cov_d_d-val ((m <VelNedCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:cov_d_d-val is deprecated.  Use piksi_rtk_msgs-msg:cov_d_d instead.")
  (cov_d_d m))

(cl:ensure-generic-function 'n_sats-val :lambda-list '(m))
(cl:defmethod n_sats-val ((m <VelNedCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:n_sats-val is deprecated.  Use piksi_rtk_msgs-msg:n_sats instead.")
  (n_sats m))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <VelNedCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:flags-val is deprecated.  Use piksi_rtk_msgs-msg:flags instead.")
  (flags m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VelNedCov>)))
    "Constants for message type '<VelNedCov>"
  '((:VEL_MODE_INVALID . 0)
    (:VEL_MODE_MEAS_DOPPLER . 1)
    (:VEL_MODE_DERIVED_DOPPLER . 2)
    (:VEL_MODE_DEAD_RECKONING . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VelNedCov)))
    "Constants for message type 'VelNedCov"
  '((:VEL_MODE_INVALID . 0)
    (:VEL_MODE_MEAS_DOPPLER . 1)
    (:VEL_MODE_DERIVED_DOPPLER . 2)
    (:VEL_MODE_DEAD_RECKONING . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VelNedCov>) ostream)
  "Serializes a message object of type '<VelNedCov>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tow)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'n)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'e)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cov_n_n))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cov_n_e))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cov_n_d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cov_e_e))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cov_e_d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cov_d_d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'n_sats)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VelNedCov>) istream)
  "Deserializes a message object of type '<VelNedCov>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tow)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tow)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tow)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tow)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'n) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'e) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'd) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cov_n_n) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cov_n_e) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cov_n_d) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cov_e_e) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cov_e_d) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cov_d_d) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'n_sats)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VelNedCov>)))
  "Returns string type for a message object of type '<VelNedCov>"
  "piksi_rtk_msgs/VelNedCov")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelNedCov)))
  "Returns string type for a message object of type 'VelNedCov"
  "piksi_rtk_msgs/VelNedCov")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VelNedCov>)))
  "Returns md5sum for a message object of type '<VelNedCov>"
  "41352a41b21545af6ecd73799c33bb68")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VelNedCov)))
  "Returns md5sum for a message object of type 'VelNedCov"
  "41352a41b21545af6ecd73799c33bb68")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VelNedCov>)))
  "Returns full string definition for message of type '<VelNedCov>"
  (cl:format cl:nil "# This message reports the velocity in local North East Down (NED) coordinates.~%# The NED coordinate system is defined as the local WGS84 tangent plane centered~%# at the current position. The full GPS time is given by the preceding MSG GPS~%# TIME with the matching time-of-week (tow). This message is similar to the MSG~%# VEL NED, but it includes the upper triangular portion of the 3x3 covariance~%# matrix.~%~%uint32 tow          # GPS Time of Week.~%int32 n             # Velocity North coordinate [mm/s].~%int32 e             # Velocity East coordinate [mm/s].~%int32 d             # Velocity Down coordinate [mm/s].~%float32 cov_n_n     # Estimated variance of northward measurement [m^2/s^2].~%float32 cov_n_e     # Covariance of northward and eastward measurement [m^2/s^2].~%float32 cov_n_d     # Covariance of northward and downward measurement [m^2/s^2].~%float32 cov_e_e     # Estimated variance of eastward measurement [m^2/s^2].~%float32 cov_e_d     # Covariance of eastward and downward measurement [m^2/s^2].~%float32 cov_d_d     # Estimated variance of downard measurement [m^2/s^2].~%uint8 n_sats        # Number of satellites used in solution.~%uint8 flags         # Status flags~%~%uint8 VEL_MODE_INVALID = 0~%uint8 VEL_MODE_MEAS_DOPPLER = 1~%uint8 VEL_MODE_DERIVED_DOPPLER = 2~%uint8 VEL_MODE_DEAD_RECKONING = 3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VelNedCov)))
  "Returns full string definition for message of type 'VelNedCov"
  (cl:format cl:nil "# This message reports the velocity in local North East Down (NED) coordinates.~%# The NED coordinate system is defined as the local WGS84 tangent plane centered~%# at the current position. The full GPS time is given by the preceding MSG GPS~%# TIME with the matching time-of-week (tow). This message is similar to the MSG~%# VEL NED, but it includes the upper triangular portion of the 3x3 covariance~%# matrix.~%~%uint32 tow          # GPS Time of Week.~%int32 n             # Velocity North coordinate [mm/s].~%int32 e             # Velocity East coordinate [mm/s].~%int32 d             # Velocity Down coordinate [mm/s].~%float32 cov_n_n     # Estimated variance of northward measurement [m^2/s^2].~%float32 cov_n_e     # Covariance of northward and eastward measurement [m^2/s^2].~%float32 cov_n_d     # Covariance of northward and downward measurement [m^2/s^2].~%float32 cov_e_e     # Estimated variance of eastward measurement [m^2/s^2].~%float32 cov_e_d     # Covariance of eastward and downward measurement [m^2/s^2].~%float32 cov_d_d     # Estimated variance of downard measurement [m^2/s^2].~%uint8 n_sats        # Number of satellites used in solution.~%uint8 flags         # Status flags~%~%uint8 VEL_MODE_INVALID = 0~%uint8 VEL_MODE_MEAS_DOPPLER = 1~%uint8 VEL_MODE_DERIVED_DOPPLER = 2~%uint8 VEL_MODE_DEAD_RECKONING = 3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VelNedCov>))
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
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VelNedCov>))
  "Converts a ROS message object to a list"
  (cl:list 'VelNedCov
    (cl:cons ':tow (tow msg))
    (cl:cons ':n (n msg))
    (cl:cons ':e (e msg))
    (cl:cons ':d (d msg))
    (cl:cons ':cov_n_n (cov_n_n msg))
    (cl:cons ':cov_n_e (cov_n_e msg))
    (cl:cons ':cov_n_d (cov_n_d msg))
    (cl:cons ':cov_e_e (cov_e_e msg))
    (cl:cons ':cov_e_d (cov_e_d msg))
    (cl:cons ':cov_d_d (cov_d_d msg))
    (cl:cons ':n_sats (n_sats msg))
    (cl:cons ':flags (flags msg))
))
