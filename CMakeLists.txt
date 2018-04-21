cmake_minimum_required(VERSION 3.8)
project(tcc)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES main.cpp StopWatch.cpp ednaive.cpp ed128d.cpp ed256d.cpp EuclideanDistance.hpp)
add_executable(main ${SOURCE_FILES})