;; Auto-generated. Do not edit!


(when (boundp 'piksi_rtk_msgs::VelNedCov)
  (if (not (find-package "PIKSI_RTK_MSGS"))
    (make-package "PIKSI_RTK_MSGS"))
  (shadow 'VelNedCov (find-package "PIKSI_RTK_MSGS")))
(unless (find-package "PIKSI_RTK_MSGS::VELNEDCOV")
  (make-package "PIKSI_RTK_MSGS::VELNEDCOV"))

(in-package "ROS")
;;//! \htmlinclude VelNedCov.msg.html


(intern "*VEL_MODE_INVALID*" (find-package "PIKSI_RTK_MSGS::VELNEDCOV"))
(shadow '*VEL_MODE_INVALID* (find-package "PIKSI_RTK_MSGS::VELNEDCOV"))
(defconstant piksi_rtk_msgs::VelNedCov::*VEL_MODE_INVALID* 0)
(intern "*VEL_MODE_MEAS_DOPPLER*" (find-package "PIKSI_RTK_MSGS::VELNEDCOV"))
(shadow '*VEL_MODE_MEAS_DOPPLER* (find-package "PIKSI_RTK_MSGS::VELNEDCOV"))
(defconstant piksi_rtk_msgs::VelNedCov::*VEL_MODE_MEAS_DOPPLER* 1)
(intern "*VEL_MODE_DERIVED_DOPPLER*" (find-package "PIKSI_RTK_MSGS::VELNEDCOV"))
(shadow '*VEL_MODE_DERIVED_DOPPLER* (find-package "PIKSI_RTK_MSGS::VELNEDCOV"))
(defconstant piksi_rtk_msgs::VelNedCov::*VEL_MODE_DERIVED_DOPPLER* 2)
(intern "*VEL_MODE_DEAD_RECKONING*" (find-package "PIKSI_RTK_MSGS::VELNEDCOV"))
(shadow '*VEL_MODE_DEAD_RECKONING* (find-package "PIKSI_RTK_MSGS::VELNEDCOV"))
(defconstant piksi_rtk_msgs::VelNedCov::*VEL_MODE_DEAD_RECKONING* 3)

(defun piksi_rtk_msgs::VelNedCov-to-symbol (const)
  (cond
        ((= const 0) 'piksi_rtk_msgs::VelNedCov::*VEL_MODE_INVALID*)
        ((= const 1) 'piksi_rtk_msgs::VelNedCov::*VEL_MODE_MEAS_DOPPLER*)
        ((= const 2) 'piksi_rtk_msgs::VelNedCov::*VEL_MODE_DERIVED_DOPPLER*)
        ((= const 3) 'piksi_rtk_msgs::VelNedCov::*VEL_MODE_DEAD_RECKONING*)
        (t nil)))

(defclass piksi_rtk_msgs::VelNedCov
  :super ros::object
  :slots (_tow _n _e _d _cov_n_n _cov_n_e _cov_n_d _cov_e_e _cov_e_d _cov_d_d _n_sats _flags ))

(defmethod piksi_rtk_msgs::VelNedCov
  (:init
   (&key
    ((:tow __tow) 0)
    ((:n __n) 0)
    ((:e __e) 0)
    ((:d __d) 0)
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
   (setq _tow (round __tow))
   (setq _n (round __n))
   (setq _e (round __e))
   (setq _d (round __d))
   (setq _cov_n_n (float __cov_n_n))
   (setq _cov_n_e (float __cov_n_e))
   (setq _cov_n_d (float __cov_n_d))
   (setq _cov_e_e (float __cov_e_e))
   (setq _cov_e_d (float __cov_e_d))
   (setq _cov_d_d (float __cov_d_d))
   (setq _n_sats (round __n_sats))
   (setq _flags (round __flags))
   self)
  (:tow
   (&optional __tow)
   (if __tow (setq _tow __tow)) _tow)
  (:n
   (&optional __n)
   (if __n (setq _n __n)) _n)
  (:e
   (&optional __e)
   (if __e (setq _e __e)) _e)
  (:d
   (&optional __d)
   (if __d (setq _d __d)) _d)
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
    ;; uint32 _tow
    4
    ;; int32 _n
    4
    ;; int32 _e
    4
    ;; int32 _d
    4
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
     ;; uint32 _tow
       (write-long _tow s)
     ;; int32 _n
       (write-long _n s)
     ;; int32 _e
       (write-long _e s)
     ;; int32 _d
       (write-long _d s)
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
   ;; uint32 _tow
     (setq _tow (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _n
     (setq _n (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _e
     (setq _e (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _d
     (setq _d (sys::peek buf ptr- :integer)) (incf ptr- 4)
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

(setf (get piksi_rtk_msgs::VelNedCov :md5sum-) "41352a41b21545af6ecd73799c33bb68")
(setf (get piksi_rtk_msgs::VelNedCov :datatype-) "piksi_rtk_msgs/VelNedCov")
(setf (get piksi_rtk_msgs::VelNedCov :definition-)
      "# This message reports the velocity in local North East Down (NED) coordinates.
# The NED coordinate system is defined as the local WGS84 tangent plane centered
# at the current position. The full GPS time is given by the preceding MSG GPS
# TIME with the matching time-of-week (tow). This message is similar to the MSG
# VEL NED, but it includes the upper triangular portion of the 3x3 covariance
# matrix.

uint32 tow          # GPS Time of Week.
int32 n             # Velocity North coordinate [mm/s].
int32 e             # Velocity East coordinate [mm/s].
int32 d             # Velocity Down coordinate [mm/s].
float32 cov_n_n     # Estimated variance of northward measurement [m^2/s^2].
float32 cov_n_e     # Covariance of northward and eastward measurement [m^2/s^2].
float32 cov_n_d     # Covariance of northward and downward measurement [m^2/s^2].
float32 cov_e_e     # Estimated variance of eastward measurement [m^2/s^2].
float32 cov_e_d     # Covariance of eastward and downward measurement [m^2/s^2].
float32 cov_d_d     # Estimated variance of downard measurement [m^2/s^2].
uint8 n_sats        # Number of satellites used in solution.
uint8 flags         # Status flags

uint8 VEL_MODE_INVALID = 0
uint8 VEL_MODE_MEAS_DOPPLER = 1
uint8 VEL_MODE_DERIVED_DOPPLER = 2
uint8 VEL_MODE_DEAD_RECKONING = 3

")



(provide :piksi_rtk_msgs/VelNedCov "41352a41b21545af6ecd73799c33bb68")


