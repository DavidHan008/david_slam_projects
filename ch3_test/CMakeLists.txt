cmake_minimum_required(VERSION 3.1)
project(ch3_test)
#添加eigen
include_directories("/usr/include/eigen3")

set(CMAKE_CXX_STANDARD 11)

add_executable(ch3_use_eigen_main ch3_use_eigen.cpp )
add_executable(ch3_use_geometry_main ch3_use_geometry.cpp )