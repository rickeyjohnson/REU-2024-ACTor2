;; Auto-generated. Do not edit!


(when (boundp 'piksi_rtk_msgs::PosEcefCov)
  (if (not (find-package "PIKSI_RTK_MSGS"))
    (make-package "PIKSI_RTK_MSGS"))
  (shadow 'PosEcefCov (find-package "PIKSI_RTK_MSGS")))
(unless (find-package "PIKSI_RTK_MSGS::POSECEFCOV")
  (make-package "PIKSI_RTK_MSGS::POSECEFCOV"))

(in-package "ROS")
;;//! \htmlinclude PosEcefCov.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*FIX_MODE_INVALID*" (find-package "PIKSI_RTK_MSGS::POSECEFCOV"))
(shadow '*FIX_MODE_INVALID* (find-package "PIKSI_RTK_MSGS::POSECEFCOV"))
(defconstant piksi_rtk_msgs::PosEcefCov::*FIX_MODE_INVALID* 0)
(intern "*FIX_MODE_SPP*" (find-package "PIKSI_RTK_MSGS::POSECEFCOV"))
(shadow '*FIX_MODE_SPP* (find-package "PIKSI_RTK_MSGS::POSECEFCOV"))
(defconstant piksi_rtk_msgs::PosEcefCov::*FIX_MODE_SPP* 1)
(intern "*FIX_MODE_DGNSS*" (find-package "PIKSI_RTK_MSGS::POSECEFCOV"))
(shadow '*FIX_MODE_DGNSS* (find-package "PIKSI_RTK_MSGS::POSECEFCOV"))
(defconstant piksi_rtk_msgs::PosEcefCov::*FIX_MODE_DGNSS* 2)
(intern "*FIX_MODE_FLOAT_RTK*" (find-package "PIKSI_RTK_MSGS::POSECEFCOV"))
(shadow '*FIX_MODE_FLOAT_RTK* (find-package "PIKSI_RTK_MSGS::POSECEFCOV"))
(defconstant piksi_rtk_msgs::PosEcefCov::*FIX_MODE_FLOAT_RTK* 3)
(intern "*FIX_MODE_FIX_RTK*" (find-package "PIKSI_RTK_MSGS::POSECEFCOV"))
(shadow '*FIX_MODE_FIX_RTK* (find-package "PIKSI_RTK_MSGS::POSECEFCOV"))
(defconstant piksi_rtk_msgs::PosEcefCov::*FIX_MODE_FIX_RTK* 4)
(intern "*FIX_MODE_DEAD_RECKONING*" (find-package "PIKSI_RTK_MSGS::POSECEFCOV"))
(shadow '*FIX_MODE_DEAD_RECKONING* (find-package "PIKSI_RTK_MSGS::POSECEFCOV"))
(defconstant piksi_rtk_msgs::PosEcefCov::*FIX_MODE_DEAD_RECKONING* 5)
(intern "*FIX_MODE_SBAS*" (find-package "PIKSI_RTK_MSGS::POSECEFCOV"))
(shadow '*FIX_MODE_SBAS* (find-package "PIKSI_RTK_MSGS::POSECEFCOV"))
(defconstant piksi_rtk_msgs::PosEcefCov::*FIX_MODE_SBAS* 6)

(defun piksi_rtk_msgs::PosEcefCov-to-symbol (const)
  (cond
        ((= const 0) 'piksi_rtk_msgs::PosEcefCov::*FIX_MODE_INVALID*)
        ((= const 1) 'piksi_rtk_msgs::PosEcefCov::*FIX_MODE_SPP*)
        ((= const 2) 'piksi_rtk_msgs::PosEcefCov::*FIX_MODE_DGNSS*)
        ((= const 3) 'piksi_rtk_msgs::PosEcefCov::*FIX_MODE_FLOAT_RTK*)
        ((= const 4) 'piksi_rtk_msgs::PosEcefCov::*FIX_MODE_FIX_RTK*)
        ((= const 5) 'piksi_rtk_msgs::PosEcefCov::*FIX_MODE_DEAD_RECKONING*)
        ((= const 6) 'piksi_rtk_msgs::PosEcefCov::*FIX_MODE_SBAS*)
        (t nil)))

(defclass piksi_rtk_msgs::PosEcefCov
  :super ros::object
  :slots (_header _tow _x _y _z _cov_x_x _cov_x_y _cov_x_z _cov_y_y _cov_y_z _cov_z_z _n_sats _flags ))

(defmethod piksi_rtk_msgs::PosEcefCov
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tow __tow) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:cov_x_x __cov_x_x) 0.0)
    ((:cov_x_y __cov_x_y) 0.0)
    ((:cov_x_z __cov_x_z) 0.0)
    ((:cov_y_y __cov_y_y) 0.0)
    ((:cov_y_z __cov_y_z) 0.0)
    ((:cov_z_z __cov_z_z) 0.0)
    ((:n_sats __n_sats) 0)
    ((:flags __flags) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _tow (round __tow))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _cov_x_x (float __cov_x_x))
   (setq _cov_x_y (float __cov_x_y))
   (setq _cov_x_z (float __cov_x_z))
   (setq _cov_y_y (float __cov_y_y))
   (setq _cov_y_z (float __cov_y_z))
   (setq _cov_z_z (float __cov_z_z))
   (setq _n_sats (round __n_sats))
   (setq _flags (round __flags))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:tow
   (&optional __tow)
   (if __tow (setq _tow __tow)) _tow)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:cov_x_x
   (&optional __cov_x_x)
   (if __cov_x_x (setq _cov_x_x __cov_x_x)) _cov_x_x)
  (:cov_x_y
   (&optional __cov_x_y)
   (if __cov_x_y (setq _cov_x_y __cov_x_y)) _cov_x_y)
  (:cov_x_z
   (&optional __cov_x_z)
   (if __cov_x_z (setq _cov_x_z __cov_x_z)) _cov_x_z)
  (:cov_y_y
   (&optional __cov_y_y)
   (if __cov_y_y (setq _cov_y_y __cov_y_y)) _cov_y_y)
  (:cov_y_z
   (&optional __cov_y_z)
   (if __cov_y_z (setq _cov_y_z __cov_y_z)) _cov_y_z)
  (:cov_z_z
   (&optional __cov_z_z)
   (if __cov_z_z (setq _cov_z_z __cov_z_z)) _cov_z_z)
  (:n_sats
   (&optional __n_sats)
   (if __n_sats (setq _n_sats __n_sats)) _n_sats)
  (:flags
   (&optional __flags)
   (if __flags (setq _flags __flags)) _flags)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _tow
    4
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float32 _cov_x_x
    4
    ;; float32 _cov_x_y
    4
    ;; float32 _cov_x_z
    4
    ;; float32 _cov_y_y
    4
    ;; float32 _cov_y_z
    4
    ;; float32 _cov_z_z
    4
    ;; uint8 _n_sats
    1
    ;; uint8 _flags
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _tow
       (write-long _tow s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _cov_x_x
       (sys::poke _cov_x_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cov_x_y
       (sys::poke _cov_x_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cov_x_z
       (sys::poke _cov_x_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cov_y_y
       (sys::poke _cov_y_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cov_y_z
       (sys::poke _cov_y_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cov_z_z
       (sys::poke _cov_z_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _n_sats
       (write-byte _n_sats s)
     ;; uint8 _flags
       (write-byte _flags s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _tow
     (setq _tow (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _cov_x_x
     (setq _cov_x_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cov_x_y
     (setq _cov_x_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cov_x_z
     (setq _cov_x_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cov_y_y
     (setq _cov_y_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cov_y_z
     (setq _cov_y_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cov_z_z
     (setq _cov_z_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _n_sats
     (setq _n_sats (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _flags
     (setq _flags (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get piksi_rtk_msgs::PosEcefCov :md5sum-) "41c67f8041e1de7f7989d20b09004845")
(setf (get piksi_rtk_msgs::PosEcefCov :datatype-) "piksi_rtk_msgs/PosEcefCov")
(setf (get piksi_rtk_msgs::PosEcefCov :definition-)
      "# The position solution message reports absolute Earth Centered Earth Fixed
# (ECEF) coordinates and the status (single point vs pseudo-absolute RTK) of the
# position solution. The message also reports the upper triangular portion of
# the 3x3 covariance matrix. If the receiver knows the surveyed position of the
# base station and has an RTK solution, this reports a pseudo-absolute position
# solution using the base station position and the rover’s RTK baseline vector.
# The full GPS time is given by the preceding MSG GPS TIME with the matching
# time-of-week (tow).

Header header

uint32 tow          # GPS Time of Week [ms].
float64 x           # ECEF X coordinate [m].
float64 y           # ECEF Y coordinate [m].
float64 z           # ECEF Z coordinate [m].
float32 cov_x_x     # Estimated variance of x [m^2].
float32 cov_x_y     # Estimated covariance of x and y [m^2].
float32 cov_x_z     # Estimated covariance of x and z [m^2].
float32 cov_y_y     # Estimated variance of y [m^2].
float32 cov_y_z     # Estimated covariance of y and z [m^2].
float32 cov_z_z     # Estimated variance of z [m^2].
uint8 n_sats        # Number of satellites used in solution.
uint8 flags         # Status flags, see MSG_POS_ECEF message description in SBP documentation.

uint8 FIX_MODE_INVALID = 0
uint8 FIX_MODE_SPP = 1
uint8 FIX_MODE_DGNSS = 2
uint8 FIX_MODE_FLOAT_RTK = 3
uint8 FIX_MODE_FIX_RTK = 4
uint8 FIX_MODE_DEAD_RECKONING = 5
uint8 FIX_MODE_SBAS = 6

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :piksi_rtk_msgs/PosEcefCov "41c67f8041e1de7f7989d20b09004845")


