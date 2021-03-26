cmake_minimum_required(VERSION 3.0.2)
project(hexapod_robot)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  roscpp
  eros
  ros_hats
  ros_display_hats
)


catkin_package(
  INCLUDE_DIRS include
  CATKIN_DEPENDS eros ros_hats ros_display_hats
)

include_directories(
 include
  ${catkin_INCLUDE_DIRS}

)

