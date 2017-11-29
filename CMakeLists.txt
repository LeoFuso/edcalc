cmake_minimum_required(VERSION 3.8)
project(tcc)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES main.cpp StopWatch.cpp edcalc.c edcalc.h)
add_executable(tcc ${SOURCE_FILES})