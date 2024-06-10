cmake_minimum_required(VERSION 3.0.2)
project(hello_gps_package)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  dynamic_reconfigure
  geometry_msgs
  roscpp
  rospy
  sensor_msgs
  std_msgs
  piksi_rtk_msgs
  libsbp_ros_msgs
  piksi_multi_cpp
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

## Declare a C++ executable
## With catkin_make all packages are built within a single CMake context
## The recommended prefix ensures that target names across packages don't collide
add_executable(hello_gps_node src/hello_world_gps.cpp)

## Add cmake target dependencies of the executable
## same as for the library above
add_dependencies(hello_gps_node ${catkin_EXPORTED_TARGETS})

## Specify libraries to link a library or executable target against
target_link_libraries(hello_gps_node ${catkin_LIBRARIES})