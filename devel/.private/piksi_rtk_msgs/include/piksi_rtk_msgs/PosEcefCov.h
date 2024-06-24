// Generated by gencpp from file piksi_rtk_msgs/PosEcefCov.msg
// DO NOT EDIT!


#ifndef PIKSI_RTK_MSGS_MESSAGE_POSECEFCOV_H
#define PIKSI_RTK_MSGS_MESSAGE_POSECEFCOV_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace piksi_rtk_msgs
{
template <class ContainerAllocator>
struct PosEcefCov_
{
  typedef PosEcefCov_<ContainerAllocator> Type;

  PosEcefCov_()
    : header()
    , tow(0)
    , x(0.0)
    , y(0.0)
    , z(0.0)
    , cov_x_x(0.0)
    , cov_x_y(0.0)
    , cov_x_z(0.0)
    , cov_y_y(0.0)
    , cov_y_z(0.0)
    , cov_z_z(0.0)
    , n_sats(0)
    , flags(0)  {
    }
  PosEcefCov_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , tow(0)
    , x(0.0)
    , y(0.0)
    , z(0.0)
    , cov_x_x(0.0)
    , cov_x_y(0.0)
    , cov_x_z(0.0)
    , cov_y_y(0.0)
    , cov_y_z(0.0)
    , cov_z_z(0.0)
    , n_sats(0)
    , flags(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint32_t _tow_type;
  _tow_type tow;

   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _z_type;
  _z_type z;

   typedef float _cov_x_x_type;
  _cov_x_x_type cov_x_x;

   typedef float _cov_x_y_type;
  _cov_x_y_type cov_x_y;

   typedef float _cov_x_z_type;
  _cov_x_z_type cov_x_z;

   typedef float _cov_y_y_type;
  _cov_y_y_type cov_y_y;

   typedef float _cov_y_z_type;
  _cov_y_z_type cov_y_z;

   typedef float _cov_z_z_type;
  _cov_z_z_type cov_z_z;

   typedef uint8_t _n_sats_type;
  _n_sats_type n_sats;

   typedef uint8_t _flags_type;
  _flags_type flags;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(FIX_MODE_INVALID)
  #undef FIX_MODE_INVALID
#endif
#if defined(_WIN32) && defined(FIX_MODE_SPP)
  #undef FIX_MODE_SPP
#endif
#if defined(_WIN32) && defined(FIX_MODE_DGNSS)
  #undef FIX_MODE_DGNSS
#endif
#if defined(_WIN32) && defined(FIX_MODE_FLOAT_RTK)
  #undef FIX_MODE_FLOAT_RTK
#endif
#if defined(_WIN32) && defined(FIX_MODE_FIX_RTK)
  #undef FIX_MODE_FIX_RTK
#endif
#if defined(_WIN32) && defined(FIX_MODE_DEAD_RECKONING)
  #undef FIX_MODE_DEAD_RECKONING
#endif
#if defined(_WIN32) && defined(FIX_MODE_SBAS)
  #undef FIX_MODE_SBAS
#endif

  enum {
    FIX_MODE_INVALID = 0u,
    FIX_MODE_SPP = 1u,
    FIX_MODE_DGNSS = 2u,
    FIX_MODE_FLOAT_RTK = 3u,
    FIX_MODE_FIX_RTK = 4u,
    FIX_MODE_DEAD_RECKONING = 5u,
    FIX_MODE_SBAS = 6u,
  };


  typedef boost::shared_ptr< ::piksi_rtk_msgs::PosEcefCov_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::piksi_rtk_msgs::PosEcefCov_<ContainerAllocator> const> ConstPtr;

}; // struct PosEcefCov_

typedef ::piksi_rtk_msgs::PosEcefCov_<std::allocator<void> > PosEcefCov;

typedef boost::shared_ptr< ::piksi_rtk_msgs::PosEcefCov > PosEcefCovPtr;
typedef boost::shared_ptr< ::piksi_rtk_msgs::PosEcefCov const> PosEcefCovConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::piksi_rtk_msgs::PosEcefCov_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::piksi_rtk_msgs::PosEcefCov_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::piksi_rtk_msgs::PosEcefCov_<ContainerAllocator1> & lhs, const ::piksi_rtk_msgs::PosEcefCov_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.tow == rhs.tow &&
    lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z &&
    lhs.cov_x_x == rhs.cov_x_x &&
    lhs.cov_x_y == rhs.cov_x_y &&
    lhs.cov_x_z == rhs.cov_x_z &&
    lhs.cov_y_y == rhs.cov_y_y &&
    lhs.cov_y_z == rhs.cov_y_z &&
    lhs.cov_z_z == rhs.cov_z_z &&
    lhs.n_sats == rhs.n_sats &&
    lhs.flags == rhs.flags;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::piksi_rtk_msgs::PosEcefCov_<ContainerAllocator1> & lhs, const ::piksi_rtk_msgs::PosEcefCov_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace piksi_rtk_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::piksi_rtk_msgs::PosEcefCov_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::piksi_rtk_msgs::PosEcefCov_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::piksi_rtk_msgs::PosEcefCov_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::piksi_rtk_msgs::PosEcefCov_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::piksi_rtk_msgs::PosEcefCov_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::piksi_rtk_msgs::PosEcefCov_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::piksi_rtk_msgs::PosEcefCov_<ContainerAllocator> >
{
  static const char* value()
  {
    return "41c67f8041e1de7f7989d20b09004845";
  }

  static const char* value(const ::piksi_rtk_msgs::PosEcefCov_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x41c67f8041e1de7fULL;
  static const uint64_t static_value2 = 0x7989d20b09004845ULL;
};

template<class ContainerAllocator>
struct DataType< ::piksi_rtk_msgs::PosEcefCov_<ContainerAllocator> >
{
  static const char* value()
  {
    return "piksi_rtk_msgs/PosEcefCov";
  }

  static const char* value(const ::piksi_rtk_msgs::PosEcefCov_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::piksi_rtk_msgs::PosEcefCov_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# The position solution message reports absolute Earth Centered Earth Fixed\n"
"# (ECEF) coordinates and the status (single point vs pseudo-absolute RTK) of the\n"
"# position solution. The message also reports the upper triangular portion of\n"
"# the 3x3 covariance matrix. If the receiver knows the surveyed position of the\n"
"# base station and has an RTK solution, this reports a pseudo-absolute position\n"
"# solution using the base station position and the rover’s RTK baseline vector.\n"
"# The full GPS time is given by the preceding MSG GPS TIME with the matching\n"
"# time-of-week (tow).\n"
"\n"
"Header header\n"
"\n"
"uint32 tow          # GPS Time of Week [ms].\n"
"float64 x           # ECEF X coordinate [m].\n"
"float64 y           # ECEF Y coordinate [m].\n"
"float64 z           # ECEF Z coordinate [m].\n"
"float32 cov_x_x     # Estimated variance of x [m^2].\n"
"float32 cov_x_y     # Estimated covariance of x and y [m^2].\n"
"float32 cov_x_z     # Estimated covariance of x and z [m^2].\n"
"float32 cov_y_y     # Estimated variance of y [m^2].\n"
"float32 cov_y_z     # Estimated covariance of y and z [m^2].\n"
"float32 cov_z_z     # Estimated variance of z [m^2].\n"
"uint8 n_sats        # Number of satellites used in solution.\n"
"uint8 flags         # Status flags, see MSG_POS_ECEF message description in SBP documentation.\n"
"\n"
"uint8 FIX_MODE_INVALID = 0\n"
"uint8 FIX_MODE_SPP = 1\n"
"uint8 FIX_MODE_DGNSS = 2\n"
"uint8 FIX_MODE_FLOAT_RTK = 3\n"
"uint8 FIX_MODE_FIX_RTK = 4\n"
"uint8 FIX_MODE_DEAD_RECKONING = 5\n"
"uint8 FIX_MODE_SBAS = 6\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::piksi_rtk_msgs::PosEcefCov_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::piksi_rtk_msgs::PosEcefCov_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.tow);
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.cov_x_x);
      stream.next(m.cov_x_y);
      stream.next(m.cov_x_z);
      stream.next(m.cov_y_y);
      stream.next(m.cov_y_z);
      stream.next(m.cov_z_z);
      stream.next(m.n_sats);
      stream.next(m.flags);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PosEcefCov_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::piksi_rtk_msgs::PosEcefCov_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::piksi_rtk_msgs::PosEcefCov_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "tow: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.tow);
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
    s << indent << "cov_x_x: ";
    Printer<float>::stream(s, indent + "  ", v.cov_x_x);
    s << indent << "cov_x_y: ";
    Printer<float>::stream(s, indent + "  ", v.cov_x_y);
    s << indent << "cov_x_z: ";
    Printer<float>::stream(s, indent + "  ", v.cov_x_z);
    s << indent << "cov_y_y: ";
    Printer<float>::stream(s, indent + "  ", v.cov_y_y);
    s << indent << "cov_y_z: ";
    Printer<float>::stream(s, indent + "  ", v.cov_y_z);
    s << indent << "cov_z_z: ";
    Printer<float>::stream(s, indent + "  ", v.cov_z_z);
    s << indent << "n_sats: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.n_sats);
    s << indent << "flags: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.flags);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PIKSI_RTK_MSGS_MESSAGE_POSECEFCOV_H