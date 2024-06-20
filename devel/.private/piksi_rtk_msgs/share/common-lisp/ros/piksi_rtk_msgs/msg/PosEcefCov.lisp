; Auto-generated. Do not edit!


(cl:in-package piksi_rtk_msgs-msg)


;//! \htmlinclude PosEcefCov.msg.html

(cl:defclass <PosEcefCov> (roslisp-msg-protocol:ros-message)
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
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
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

(cl:defclass PosEcefCov (<PosEcefCov>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PosEcefCov>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PosEcefCov)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name piksi_rtk_msgs-msg:<PosEcefCov> is deprecated: use piksi_rtk_msgs-msg:PosEcefCov instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PosEcefCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:header-val is deprecated.  Use piksi_rtk_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tow-val :lambda-list '(m))
(cl:defmethod tow-val ((m <PosEcefCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:tow-val is deprecated.  Use piksi_rtk_msgs-msg:tow instead.")
  (tow m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <PosEcefCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:x-val is deprecated.  Use piksi_rtk_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <PosEcefCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:y-val is deprecated.  Use piksi_rtk_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <PosEcefCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:z-val is deprecated.  Use piksi_rtk_msgs-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'cov_x_x-val :lambda-list '(m))
(cl:defmethod cov_x_x-val ((m <PosEcefCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:cov_x_x-val is deprecated.  Use piksi_rtk_msgs-msg:cov_x_x instead.")
  (cov_x_x m))

(cl:ensure-generic-function 'cov_x_y-val :lambda-list '(m))
(cl:defmethod cov_x_y-val ((m <PosEcefCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:cov_x_y-val is deprecated.  Use piksi_rtk_msgs-msg:cov_x_y instead.")
  (cov_x_y m))

(cl:ensure-generic-function 'cov_x_z-val :lambda-list '(m))
(cl:defmethod cov_x_z-val ((m <PosEcefCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:cov_x_z-val is deprecated.  Use piksi_rtk_msgs-msg:cov_x_z instead.")
  (cov_x_z m))

(cl:ensure-generic-function 'cov_y_y-val :lambda-list '(m))
(cl:defmethod cov_y_y-val ((m <PosEcefCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:cov_y_y-val is deprecated.  Use piksi_rtk_msgs-msg:cov_y_y instead.")
  (cov_y_y m))

(cl:ensure-generic-function 'cov_y_z-val :lambda-list '(m))
(cl:defmethod cov_y_z-val ((m <PosEcefCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:cov_y_z-val is deprecated.  Use piksi_rtk_msgs-msg:cov_y_z instead.")
  (cov_y_z m))

(cl:ensure-generic-function 'cov_z_z-val :lambda-list '(m))
(cl:defmethod cov_z_z-val ((m <PosEcefCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:cov_z_z-val is deprecated.  Use piksi_rtk_msgs-msg:cov_z_z instead.")
  (cov_z_z m))

(cl:ensure-generic-function 'n_sats-val :lambda-list '(m))
(cl:defmethod n_sats-val ((m <PosEcefCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:n_sats-val is deprecated.  Use piksi_rtk_msgs-msg:n_sats instead.")
  (n_sats m))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <PosEcefCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piksi_rtk_msgs-msg:flags-val is deprecated.  Use piksi_rtk_msgs-msg:flags instead.")
  (flags m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PosEcefCov>)))
    "Constants for message type '<PosEcefCov>"
  '((:FIX_MODE_INVALID . 0)
    (:FIX_MODE_SPP . 1)
    (:FIX_MODE_DGNSS . 2)
    (:FIX_MODE_FLOAT_RTK . 3)
    (:FIX_MODE_FIX_RTK . 4)
    (:FIX_MODE_DEAD_RECKONING . 5)
    (:FIX_MODE_SBAS . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PosEcefCov)))
    "Constants for message type 'PosEcefCov"
  '((:FIX_MODE_INVALID . 0)
    (:FIX_MODE_SPP . 1)
    (:FIX_MODE_DGNSS . 2)
    (:FIX_MODE_FLOAT_RTK . 3)
    (:FIX_MODE_FIX_RTK . 4)
    (:FIX_MODE_DEAD_RECKONING . 5)
    (:FIX_MODE_SBAS . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PosEcefCov>) ostream)
  "Serializes a message object of type '<PosEcefCov>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tow)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PosEcefCov>) istream)
  "Deserializes a message object of type '<PosEcefCov>"
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
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-double-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PosEcefCov>)))
  "Returns string type for a message object of type '<PosEcefCov>"
  "piksi_rtk_msgs/PosEcefCov")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PosEcefCov)))
  "Returns string type for a message object of type 'PosEcefCov"
  "piksi_rtk_msgs/PosEcefCov")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PosEcefCov>)))
  "Returns md5sum for a message object of type '<PosEcefCov>"
  "41c67f8041e1de7f7989d20b09004845")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PosEcefCov)))
  "Returns md5sum for a message object of type 'PosEcefCov"
  "41c67f8041e1de7f7989d20b09004845")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PosEcefCov>)))
  "Returns full string definition for message of type '<PosEcefCov>"
  (cl:format cl:nil "# The position solution message reports absolute Earth Centered Earth Fixed~%# (ECEF) coordinates and the status (single point vs pseudo-absolute RTK) of the~%# position solution. The message also reports the upper triangular portion of~%# the 3x3 covariance matrix. If the receiver knows the surveyed position of the~%# base station and has an RTK solution, this reports a pseudo-absolute position~%# solution using the base station position and the rover’s RTK baseline vector.~%# The full GPS time is given by the preceding MSG GPS TIME with the matching~%# time-of-week (tow).~%~%Header header~%~%uint32 tow          # GPS Time of Week [ms].~%float64 x           # ECEF X coordinate [m].~%float64 y           # ECEF Y coordinate [m].~%float64 z           # ECEF Z coordinate [m].~%float32 cov_x_x     # Estimated variance of x [m^2].~%float32 cov_x_y     # Estimated covariance of x and y [m^2].~%float32 cov_x_z     # Estimated covariance of x and z [m^2].~%float32 cov_y_y     # Estimated variance of y [m^2].~%float32 cov_y_z     # Estimated covariance of y and z [m^2].~%float32 cov_z_z     # Estimated variance of z [m^2].~%uint8 n_sats        # Number of satellites used in solution.~%uint8 flags         # Status flags, see MSG_POS_ECEF message description in SBP documentation.~%~%uint8 FIX_MODE_INVALID = 0~%uint8 FIX_MODE_SPP = 1~%uint8 FIX_MODE_DGNSS = 2~%uint8 FIX_MODE_FLOAT_RTK = 3~%uint8 FIX_MODE_FIX_RTK = 4~%uint8 FIX_MODE_DEAD_RECKONING = 5~%uint8 FIX_MODE_SBAS = 6~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PosEcefCov)))
  "Returns full string definition for message of type 'PosEcefCov"
  (cl:format cl:nil "# The position solution message reports absolute Earth Centered Earth Fixed~%# (ECEF) coordinates and the status (single point vs pseudo-absolute RTK) of the~%# position solution. The message also reports the upper triangular portion of~%# the 3x3 covariance matrix. If the receiver knows the surveyed position of the~%# base station and has an RTK solution, this reports a pseudo-absolute position~%# solution using the base station position and the rover’s RTK baseline vector.~%# The full GPS time is given by the preceding MSG GPS TIME with the matching~%# time-of-week (tow).~%~%Header header~%~%uint32 tow          # GPS Time of Week [ms].~%float64 x           # ECEF X coordinate [m].~%float64 y           # ECEF Y coordinate [m].~%float64 z           # ECEF Z coordinate [m].~%float32 cov_x_x     # Estimated variance of x [m^2].~%float32 cov_x_y     # Estimated covariance of x and y [m^2].~%float32 cov_x_z     # Estimated covariance of x and z [m^2].~%float32 cov_y_y     # Estimated variance of y [m^2].~%float32 cov_y_z     # Estimated covariance of y and z [m^2].~%float32 cov_z_z     # Estimated variance of z [m^2].~%uint8 n_sats        # Number of satellites used in solution.~%uint8 flags         # Status flags, see MSG_POS_ECEF message description in SBP documentation.~%~%uint8 FIX_MODE_INVALID = 0~%uint8 FIX_MODE_SPP = 1~%uint8 FIX_MODE_DGNSS = 2~%uint8 FIX_MODE_FLOAT_RTK = 3~%uint8 FIX_MODE_FIX_RTK = 4~%uint8 FIX_MODE_DEAD_RECKONING = 5~%uint8 FIX_MODE_SBAS = 6~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PosEcefCov>))
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
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PosEcefCov>))
  "Converts a ROS message object to a list"
  (cl:list 'PosEcefCov
    (cl:cons ':header (header msg))
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
