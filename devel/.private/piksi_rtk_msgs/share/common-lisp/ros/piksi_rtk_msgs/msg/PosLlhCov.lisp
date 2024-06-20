; Auto-generated. Do not edit!


(cl:in-package piksi_rtk_msgs-msg)


;//! \htmlinclude PosLlhCov.msg.html

(cl:defclass <PosLlhCov> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (tow
    :reader tow
    :initarg :tow
    :type cl:integer
    :initform 0)
   (lat
    :reader lat
    :initarg :lat
    :type cl:float
    :initform 0.0)
   (lon
    :reader lon
    :initarg :lon
    :type cl:float
    :initform 0.0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0)
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

(cl:defclass PosLlhCov (<PosLlhCov>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PosLlhCov>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PosLlhCov)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name piksi_rtk_msgs-msg:<PosLlhCov> is deprecated: use piksi_rtk_msgs-msg:PosLlhCov instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PosLlhCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:header-val is deprecated.  Use piksi_rtk_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tow-val :lambda-list '(m))
(cl:defmethod tow-val ((m <PosLlhCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:tow-val is deprecated.  Use piksi_rtk_msgs-msg:tow instead.")
  (tow m))

(cl:ensure-generic-function 'lat-val :lambda-list '(m))
(cl:defmethod lat-val ((m <PosLlhCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:lat-val is deprecated.  Use piksi_rtk_msgs-msg:lat instead.")
  (lat m))

(cl:ensure-generic-function 'lon-val :lambda-list '(m))
(cl:defmethod lon-val ((m <PosLlhCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:lon-val is deprecated.  Use piksi_rtk_msgs-msg:lon instead.")
  (lon m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <PosLlhCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:height-val is deprecated.  Use piksi_rtk_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'cov_n_n-val :lambda-list '(m))
(cl:defmethod cov_n_n-val ((m <PosLlhCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:cov_n_n-val is deprecated.  Use piksi_rtk_msgs-msg:cov_n_n instead.")
  (cov_n_n m))

(cl:ensure-generic-function 'cov_n_e-val :lambda-list '(m))
(cl:defmethod cov_n_e-val ((m <PosLlhCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:cov_n_e-val is deprecated.  Use piksi_rtk_msgs-msg:cov_n_e instead.")
  (cov_n_e m))

(cl:ensure-generic-function 'cov_n_d-val :lambda-list '(m))
(cl:defmethod cov_n_d-val ((m <PosLlhCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:cov_n_d-val is deprecated.  Use piksi_rtk_msgs-msg:cov_n_d instead.")
  (cov_n_d m))

(cl:ensure-generic-function 'cov_e_e-val :lambda-list '(m))
(cl:defmethod cov_e_e-val ((m <PosLlhCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:cov_e_e-val is deprecated.  Use piksi_rtk_msgs-msg:cov_e_e instead.")
  (cov_e_e m))

(cl:ensure-generic-function 'cov_e_d-val :lambda-list '(m))
(cl:defmethod cov_e_d-val ((m <PosLlhCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:cov_e_d-val is deprecated.  Use piksi_rtk_msgs-msg:cov_e_d instead.")
  (cov_e_d m))

(cl:ensure-generic-function 'cov_d_d-val :lambda-list '(m))
(cl:defmethod cov_d_d-val ((m <PosLlhCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:cov_d_d-val is deprecated.  Use piksi_rtk_msgs-msg:cov_d_d instead.")
  (cov_d_d m))

(cl:ensure-generic-function 'n_sats-val :lambda-list '(m))
(cl:defmethod n_sats-val ((m <PosLlhCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:n_sats-val is deprecated.  Use piksi_rtk_msgs-msg:n_sats instead.")
  (n_sats m))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <PosLlhCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:flags-val is deprecated.  Use piksi_rtk_msgs-msg:flags instead.")
  (flags m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PosLlhCov>)))
    "Constants for message type '<PosLlhCov>"
  '((:FIX_MODE_INVALID . 0)
    (:FIX_MODE_SPP . 1)
    (:FIX_MODE_DGNSS . 2)
    (:FIX_MODE_FLOAT_RTK . 3)
    (:FIX_MODE_FIX_RTK . 4)
    (:FIX_MODE_DEAD_RECKONING . 5)
    (:FIX_MODE_SBAS . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PosLlhCov)))
    "Constants for message type 'PosLlhCov"
  '((:FIX_MODE_INVALID . 0)
    (:FIX_MODE_SPP . 1)
    (:FIX_MODE_DGNSS . 2)
    (:FIX_MODE_FLOAT_RTK . 3)
    (:FIX_MODE_FIX_RTK . 4)
    (:FIX_MODE_DEAD_RECKONING . 5)
    (:FIX_MODE_SBAS . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PosLlhCov>) ostream)
  "Serializes a message object of type '<PosLlhCov>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tow)) ostream)
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
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PosLlhCov>) istream)
  "Deserializes a message object of type '<PosLlhCov>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tow)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tow)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tow)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tow)) (cl:read-byte istream))
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
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-double-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PosLlhCov>)))
  "Returns string type for a message object of type '<PosLlhCov>"
  "piksi_rtk_msgs/PosLlhCov")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PosLlhCov)))
  "Returns string type for a message object of type 'PosLlhCov"
  "piksi_rtk_msgs/PosLlhCov")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PosLlhCov>)))
  "Returns md5sum for a message object of type '<PosLlhCov>"
  "0db16f274c2a14c2eac520dc850f823a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PosLlhCov)))
  "Returns md5sum for a message object of type 'PosLlhCov"
  "0db16f274c2a14c2eac520dc850f823a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PosLlhCov>)))
  "Returns full string definition for message of type '<PosLlhCov>"
  (cl:format cl:nil "# This position solution message reports the absolute geodetic coordinates and~%# the status (single point vs pseudo-absolute RTK) of the position solution as~%# well as the upper triangle of the 3x3 covariance matrix. The position~%# information and Fix Mode flags should follow the MSG POS LLH message.~%# Since the covariance matrix is computed in the local-level North, East, Down~%# frame, the covariance terms follow with that convention. Thus, covariances are~%# reported against the ”downward” measurement and care should be taken with the~%# sign convention.~%~%Header header~%~%uint32 tow          # GPS Time of Week [ms].~%float64 lat         # Latitude [deg].~%float64 lon         # Longitude [deg].~%float64 height      # Height [deg].~%float32 cov_n_n     # Estimated variance of northing [m^2].~%float32 cov_n_e     # Covariance of northing and easting [m^2].~%float32 cov_n_d     # Covariance of northing and downward measurement [m^2].~%float32 cov_e_e     # Estimated variance of easting [m^2].~%float32 cov_e_d     # Covariance of easting and downward measurement [m^2].~%float32 cov_d_d     # Estimated variance of downward measurement [m^2].~%uint8 n_sats        # Number of satellites used in solution.~%uint8 flags         # Status flags, see MSG_POS_LLH message description in SBP documentation.~%~%uint8 FIX_MODE_INVALID = 0~%uint8 FIX_MODE_SPP = 1~%uint8 FIX_MODE_DGNSS = 2~%uint8 FIX_MODE_FLOAT_RTK = 3~%uint8 FIX_MODE_FIX_RTK = 4~%uint8 FIX_MODE_DEAD_RECKONING = 5~%uint8 FIX_MODE_SBAS = 6~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PosLlhCov)))
  "Returns full string definition for message of type 'PosLlhCov"
  (cl:format cl:nil "# This position solution message reports the absolute geodetic coordinates and~%# the status (single point vs pseudo-absolute RTK) of the position solution as~%# well as the upper triangle of the 3x3 covariance matrix. The position~%# information and Fix Mode flags should follow the MSG POS LLH message.~%# Since the covariance matrix is computed in the local-level North, East, Down~%# frame, the covariance terms follow with that convention. Thus, covariances are~%# reported against the ”downward” measurement and care should be taken with the~%# sign convention.~%~%Header header~%~%uint32 tow          # GPS Time of Week [ms].~%float64 lat         # Latitude [deg].~%float64 lon         # Longitude [deg].~%float64 height      # Height [deg].~%float32 cov_n_n     # Estimated variance of northing [m^2].~%float32 cov_n_e     # Covariance of northing and easting [m^2].~%float32 cov_n_d     # Covariance of northing and downward measurement [m^2].~%float32 cov_e_e     # Estimated variance of easting [m^2].~%float32 cov_e_d     # Covariance of easting and downward measurement [m^2].~%float32 cov_d_d     # Estimated variance of downward measurement [m^2].~%uint8 n_sats        # Number of satellites used in solution.~%uint8 flags         # Status flags, see MSG_POS_LLH message description in SBP documentation.~%~%uint8 FIX_MODE_INVALID = 0~%uint8 FIX_MODE_SPP = 1~%uint8 FIX_MODE_DGNSS = 2~%uint8 FIX_MODE_FLOAT_RTK = 3~%uint8 FIX_MODE_FIX_RTK = 4~%uint8 FIX_MODE_DEAD_RECKONING = 5~%uint8 FIX_MODE_SBAS = 6~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PosLlhCov>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     8
     8
     8
     4
     4
     4
     4
     4
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PosLlhCov>))
  "Converts a ROS message object to a list"
  (cl:list 'PosLlhCov
    (cl:cons ':header (header msg))
    (cl:cons ':tow (tow msg))
    (cl:cons ':lat (lat msg))
    (cl:cons ':lon (lon msg))
    (cl:cons ':height (height msg))
    (cl:cons ':cov_n_n (cov_n_n msg))
    (cl:cons ':cov_n_e (cov_n_e msg))
    (cl:cons ':cov_n_d (cov_n_d msg))
    (cl:cons ':cov_e_e (cov_e_e msg))
    (cl:cons ':cov_e_d (cov_e_d msg))
    (cl:cons ':cov_d_d (cov_d_d msg))
    (cl:cons ':n_sats (n_sats msg))
    (cl:cons ':flags (flags msg))
))
