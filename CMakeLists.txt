cmake_minimum_required(VERSION 3.8)
project(tcc)


set(CMAKE_CXX_STANDARD 11)
set(CMAKE_C_STANDARD 11)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -march=native -mavx512f")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -march=native -mavx512f")


set(SOURCE_FILES main.cpp StopWatch.cpp hdcalc.c hdcalc.h edcalc.h edcalc.c)
add_executable(tcc ${SOURCE_FILES})