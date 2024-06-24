;; Auto-generated. Do not edit!


(when (boundp 'piksi_rtk_msgs::PosLlhCov)
  (if (not (find-package "PIKSI_RTK_MSGS"))
    (make-package "PIKSI_RTK_MSGS"))
  (shadow 'PosLlhCov (find-package "PIKSI_RTK_MSGS")))
(unless (find-package "PIKSI_RTK_MSGS::POSLLHCOV")
  (make-package "PIKSI_RTK_MSGS::POSLLHCOV"))

(in-package "ROS")
;;//! \htmlinclude PosLlhCov.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*FIX_MODE_INVALID*" (find-package "PIKSI_RTK_MSGS::POSLLHCOV"))
(shadow '*FIX_MODE_INVALID* (find-package "PIKSI_RTK_MSGS::POSLLHCOV"))
(defconstant piksi_rtk_msgs::PosLlhCov::*FIX_MODE_INVALID* 0)
(intern "*FIX_MODE_SPP*" (find-package "PIKSI_RTK_MSGS::POSLLHCOV"))
(shadow '*FIX_MODE_SPP* (find-package "PIKSI_RTK_MSGS::POSLLHCOV"))
(defconstant piksi_rtk_msgs::PosLlhCov::*FIX_MODE_SPP* 1)
(intern "*FIX_MODE_DGNSS*" (find-package "PIKSI_RTK_MSGS::POSLLHCOV"))
(shadow '*FIX_MODE_DGNSS* (find-package "PIKSI_RTK_MSGS::POSLLHCOV"))
(defconstant piksi_rtk_msgs::PosLlhCov::*FIX_MODE_DGNSS* 2)
(intern "*FIX_MODE_FLOAT_RTK*" (find-package "PIKSI_RTK_MSGS::POSLLHCOV"))
(shadow '*FIX_MODE_FLOAT_RTK* (find-package "PIKSI_RTK_MSGS::POSLLHCOV"))
(defconstant piksi_rtk_msgs::PosLlhCov::*FIX_MODE_FLOAT_RTK* 3)
(intern "*FIX_MODE_FIX_RTK*" (find-package "PIKSI_RTK_MSGS::POSLLHCOV"))
(shadow '*FIX_MODE_FIX_RTK* (find-package "PIKSI_RTK_MSGS::POSLLHCOV"))
(defconstant piksi_rtk_msgs::PosLlhCov::*FIX_MODE_FIX_RTK* 4)
(intern "*FIX_MODE_DEAD_RECKONING*" (find-package "PIKSI_RTK_MSGS::POSLLHCOV"))
(shadow '*FIX_MODE_DEAD_RECKONING* (find-package "PIKSI_RTK_MSGS::POSLLHCOV"))
(defconstant piksi_rtk_msgs::PosLlhCov::*FIX_MODE_DEAD_RECKONING* 5)
(intern "*FIX_MODE_SBAS*" (find-package "PIKSI_RTK_MSGS::POSLLHCOV"))
(shadow '*FIX_MODE_SBAS* (find-package "PIKSI_RTK_MSGS::POSLLHCOV"))
(defconstant piksi_rtk_msgs::PosLlhCov::*FIX_MODE_SBAS* 6)

(defun piksi_rtk_msgs::PosLlhCov-to-symbol (const)
  (cond
        ((= const 0) 'piksi_rtk_msgs::PosLlhCov::*FIX_MODE_INVALID*)
        ((= const 1) 'piksi_rtk_msgs::PosLlhCov::*FIX_MODE_SPP*)
        ((= const 2) 'piksi_rtk_msgs::PosLlhCov::*FIX_MODE_DGNSS*)
        ((= const 3) 'piksi_rtk_msgs::PosLlhCov::*FIX_MODE_FLOAT_RTK*)
        ((= const 4) 'piksi_rtk_msgs::PosLlhCov::*FIX_MODE_FIX_RTK*)
        ((= const 5) 'piksi_rtk_msgs::PosLlhCov::*FIX_MODE_DEAD_RECKONING*)
        ((= const 6) 'piksi_rtk_msgs::PosLlhCov::*FIX_MODE_SBAS*)
        (t nil)))

(defclass piksi_rtk_msgs::PosLlhCov
  :super ros::object
  :slots (_header _tow _lat _lon _height _cov_n_n _cov_n_e _cov_n_d _cov_e_e _cov_e_d _cov_d_d _n_sats _flags ))

(defmethod piksi_rtk_msgs::PosLlhCov
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tow __tow) 0)
    ((:lat __lat) 0.0)
    ((:lon __lon) 0.0)
    ((:height __height) 0.0)
    ((:cov_n_n __cov_n_n) 0.0)
    ((:cov_n_e __cov_n_e) 0.0)
    ((:cov_n_d __cov_n_d) 0.0)
    ((:cov_e_e __cov_e_e) 0.0)
    ((:cov_e_d __cov_e_d) 0.0)
    ((:cov_d_d __cov_d_d) 0.0)
    ((:n_sats __n_sats) 0)
    ((:flags __flags) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _tow (round __tow))
   (setq _lat (float __lat))
   (setq _lon (float __lon))
   (setq _height (float __height))
   (setq _cov_n_n (float __cov_n_n))
   (setq _cov_n_e (float __cov_n_e))
   (setq _cov_n_d (float __cov_n_d))
   (setq _cov_e_e (float __cov_e_e))
   (setq _cov_e_d (float __cov_e_d))
   (setq _cov_d_d (float __cov_d_d))
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
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:cov_n_n
   (&optional __cov_n_n)
   (if __cov_n_n (setq _cov_n_n __cov_n_n)) _cov_n_n)
  (:cov_n_e
   (&optional __cov_n_e)
   (if __cov_n_e (setq _cov_n_e __cov_n_e)) _cov_n_e)
  (:cov_n_d
   (&optional __cov_n_d)
   (if __cov_n_d (setq _cov_n_d __cov_n_d)) _cov_n_d)
  (:cov_e_e
   (&optional __cov_e_e)
   (if __cov_e_e (setq _cov_e_e __cov_e_e)) _cov_e_e)
  (:cov_e_d
   (&optional __cov_e_d)
   (if __cov_e_d (setq _cov_e_d __cov_e_d)) _cov_e_d)
  (:cov_d_d
   (&optional __cov_d_d)
   (if __cov_d_d (setq _cov_d_d __cov_d_d)) _cov_d_d)
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
    ;; float64 _lat
    8
    ;; float64 _lon
    8
    ;; float64 _height
    8
    ;; float32 _cov_n_n
    4
    ;; float32 _cov_n_e
    4
    ;; float32 _cov_n_d
    4
    ;; float32 _cov_e_e
    4
    ;; float32 _cov_e_d
    4
    ;; float32 _cov_d_d
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
     ;; float64 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon
       (sys::poke _lon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _cov_n_n
       (sys::poke _cov_n_n (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cov_n_e
       (sys::poke _cov_n_e (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cov_n_d
       (sys::poke _cov_n_d (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cov_e_e
       (sys::poke _cov_e_e (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cov_e_d
       (sys::poke _cov_e_d (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cov_d_d
       (sys::poke _cov_d_d (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float64 _lat
     (setq _lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon
     (setq _lon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _cov_n_n
     (setq _cov_n_n (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cov_n_e
     (setq _cov_n_e (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cov_n_d
     (setq _cov_n_d (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cov_e_e
     (setq _cov_e_e (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cov_e_d
     (setq _cov_e_d (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cov_d_d
     (setq _cov_d_d (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _n_sats
     (setq _n_sats (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _flags
     (setq _flags (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get piksi_rtk_msgs::PosLlhCov :md5sum-) "0db16f274c2a14c2eac520dc850f823a")
(setf (get piksi_rtk_msgs::PosLlhCov :datatype-) "piksi_rtk_msgs/PosLlhCov")
(setf (get piksi_rtk_msgs::PosLlhCov :definition-)
      "# This position solution message reports the absolute geodetic coordinates and
# the status (single point vs pseudo-absolute RTK) of the position solution as
# well as the upper triangle of the 3x3 covariance matrix. The position
# information and Fix Mode flags should follow the MSG POS LLH message.
# Since the covariance matrix is computed in the local-level North, East, Down
# frame, the covariance terms follow with that convention. Thus, covariances are
# reported against the ”downward” measurement and care should be taken with the
# sign convention.

Header header

uint32 tow          # GPS Time of Week [ms].
float64 lat         # Latitude [deg].
float64 lon         # Longitude [deg].
float64 height      # Height [deg].
float32 cov_n_n     # Estimated variance of northing [m^2].
float32 cov_n_e     # Covariance of northing and easting [m^2].
float32 cov_n_d     # Covariance of northing and downward measurement [m^2].
float32 cov_e_e     # Estimated variance of easting [m^2].
float32 cov_e_d     # Covariance of easting and downward measurement [m^2].
float32 cov_d_d     # Estimated variance of downward measurement [m^2].
uint8 n_sats        # Number of satellites used in solution.
uint8 flags         # Status flags, see MSG_POS_LLH message description in SBP documentation.

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



(provide :piksi_rtk_msgs/PosLlhCov "0db16f274c2a14c2eac520dc850f823a")


