cmake_minimum_required(VERSION 3.8)
project(tcc)


set(CMAKE_CXX_STANDARD 11)

set_source_files_properties(ed256d.cpp PROPERTIES COMPILE_FLAGS "-march=native -mavx2")
set_source_files_properties(ed128d.cpp PROPERTIES COMPILE_FLAGS "-march=native")

set(SOURCE_FILES main.cpp StopWatch.cpp ed128d.cpp ed128d.h ed256d.cpp ed256d.h ednaive.cpp ednaive.h EuclideanDistance.h)
add_executable(tcc ${SOURCE_FILES})