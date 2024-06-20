;; Auto-generated. Do not edit!


(when (boundp 'piksi_rtk_msgs::VelEcefCov)
  (if (not (find-package "PIKSI_RTK_MSGS"))
    (make-package "PIKSI_RTK_MSGS"))
  (shadow 'VelEcefCov (find-package "PIKSI_RTK_MSGS")))
(unless (find-package "PIKSI_RTK_MSGS::VELECEFCOV")
  (make-package "PIKSI_RTK_MSGS::VELECEFCOV"))

(in-package "ROS")
;;//! \htmlinclude VelEcefCov.msg.html


(intern "*VEL_MODE_INVALID*" (find-package "PIKSI_RTK_MSGS::VELECEFCOV"))
(shadow '*VEL_MODE_INVALID* (find-package "PIKSI_RTK_MSGS::VELECEFCOV"))
(defconstant piksi_rtk_msgs::VelEcefCov::*VEL_MODE_INVALID* 0)
(intern "*VEL_MODE_MEAS_DOPPLER*" (find-package "PIKSI_RTK_MSGS::VELECEFCOV"))
(shadow '*VEL_MODE_MEAS_DOPPLER* (find-package "PIKSI_RTK_MSGS::VELECEFCOV"))
(defconstant piksi_rtk_msgs::VelEcefCov::*VEL_MODE_MEAS_DOPPLER* 1)
(intern "*VEL_MODE_DERIVED_DOPPLER*" (find-package "PIKSI_RTK_MSGS::VELECEFCOV"))
(shadow '*VEL_MODE_DERIVED_DOPPLER* (find-package "PIKSI_RTK_MSGS::VELECEFCOV"))
(defconstant piksi_rtk_msgs::VelEcefCov::*VEL_MODE_DERIVED_DOPPLER* 2)
(intern "*VEL_MODE_DEAD_RECKONING*" (find-package "PIKSI_RTK_MSGS::VELECEFCOV"))
(shadow '*VEL_MODE_DEAD_RECKONING* (find-package "PIKSI_RTK_MSGS::VELECEFCOV"))
(defconstant piksi_rtk_msgs::VelEcefCov::*VEL_MODE_DEAD_RECKONING* 3)

(defun piksi_rtk_msgs::VelEcefCov-to-symbol (const)
  (cond
        ((= const 0) 'piksi_rtk_msgs::VelEcefCov::*VEL_MODE_INVALID*)
        ((= const 1) 'piksi_rtk_msgs::VelEcefCov::*VEL_MODE_MEAS_DOPPLER*)
        ((= const 2) 'piksi_rtk_msgs::VelEcefCov::*VEL_MODE_DERIVED_DOPPLER*)
        ((= const 3) 'piksi_rtk_msgs::VelEcefCov::*VEL_MODE_DEAD_RECKONING*)
        (t nil)))

(defclass piksi_rtk_msgs::VelEcefCov
  :super ros::object
  :slots (_tow _x _y _z _cov_x_x _cov_x_y _cov_x_z _cov_y_y _cov_y_z _cov_z_z _n_sats _flags ))

(defmethod piksi_rtk_msgs::VelEcefCov
  (:init
   (&key
    ((:tow __tow) 0)
    ((:x __x) 0)
    ((:y __y) 0)
    ((:z __z) 0)
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
   (setq _tow (round __tow))
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _z (round __z))
   (setq _cov_x_x (float __cov_x_x))
   (setq _cov_x_y (float __cov_x_y))
   (setq _cov_x_z (float __cov_x_z))
   (setq _cov_y_y (float __cov_y_y))
   (setq _cov_y_z (float __cov_y_z))
   (setq _cov_z_z (float __cov_z_z))
   (setq _n_sats (round __n_sats))
   (setq _flags (round __flags))
   self)
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
    ;; uint32 _tow
    4
    ;; int32 _x
    4
    ;; int32 _y
    4
    ;; int32 _z
    4
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
     ;; uint32 _tow
       (write-long _tow s)
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;; int32 _z
       (write-long _z s)
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
   ;; uint32 _tow
     (setq _tow (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _z
     (setq _z (sys::peek buf ptr- :integer)) (incf ptr- 4)
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

(setf (get piksi_rtk_msgs::VelEcefCov :md5sum-) "3b1a393d40744915fd3904d558c780af")
(setf (get piksi_rtk_msgs::VelEcefCov :datatype-) "piksi_rtk_msgs/VelEcefCov")
(setf (get piksi_rtk_msgs::VelEcefCov :definition-)
      "# This message reports the velocity in local North East Down (NED) coordinates.
# The NED coordinate system is defined as the local WGS84 tangent plane centered
# at the current position. The full GPS time is given by the preceding MSG GPS
# TIME with the matching time-of-week (tow). This message is similar to the MSG
# VEL NED, but it includes the upper triangular portion of the 3x3 covariance
# matrix.

uint32 tow          # GPS Time of Week.
int32 x             # Velocity North coordinate [mm/s].
int32 y             # Velocity East coordinate [mm/s].
int32 z             # Velocity Down coordinate [mm/s].
float32 cov_x_x     # Estimated variance of x [m^2/s^2].
float32 cov_x_y     # Estimated covariance of x and y [m^2/s^2].
float32 cov_x_z     # Estimated covariance of x and z [m^2/s^2].
float32 cov_y_y     # Estimated variance of y [m^2/s^2].
float32 cov_y_z     # Estimated covariance of y and z [m^2/s^2].
float32 cov_z_z     # Estimated variance of z [m^2/s^2].
uint8 n_sats        # Number of satellites used in solution.
uint8 flags         # Status flags

uint8 VEL_MODE_INVALID = 0
uint8 VEL_MODE_MEAS_DOPPLER = 1
uint8 VEL_MODE_DERIVED_DOPPLER = 2
uint8 VEL_MODE_DEAD_RECKONING = 3

")



(provide :piksi_rtk_msgs/VelEcefCov "3b1a393d40744915fd3904d558c780af")


