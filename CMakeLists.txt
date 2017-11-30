cmake_minimum_required(VERSION 3.8)
project(tcc)


set(CMAKE_CXX_STANDARD 11)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -march=native")


set(SOURCE_FILES main.cpp StopWatch.cpp hdcalc.c hdcalc.h)
add_executable(tcc ${SOURCE_FILES})