cmake_minimum_required(VERSION 2.8 FATAL_ERROR)

# Find Gazebo
find_package(gazebo REQUIRED)
include_directories(${GAZEBO_INCLUDE_DIRS})
link_directories(${GAZEBO_LIBRARY_DIRS})
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${GAZEBO_CXX_FLAGS}")

# Build our plugin
add_library(joint_plugin SHARED joint_plugin.cc)
target_link_libraries(joint_plugin ${GAZEBO_libraries})

# Build the stand-alone test program
add_executable(set_joint_rot set_joint_rot.cc)
add_executable(set_joint_trans set_joint_trans.cc)

if (${gazebo_VERSION_MAJOR} LESS 6)
  # These two
  include(FindBoost)
  find_package(Boost ${MIN_BOOST_VERSION} REQUIRED system filesystem regex)
  target_link_libraries(set_joint_rot ${GAZEBO_LIBRARIES} ${Boost_LIBRARIES})
  target_link_libraries(set_joint_trans ${GAZEBO_LIBRARIES} ${Boost_LIBRARIES})
else()
  target_link_libraries(set_joint_rot ${GAZEBO_LIBRARIES})
  target_link_libraries(set_joint_trans ${GAZEBO_LIBRARIES})
endif()
