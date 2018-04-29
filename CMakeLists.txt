cmake_minimum_required(VERSION 3.8)
set(CMAKE_BUILD_TYPE Release)
project(edcalclib VERSION 1.0.1 DESCRIPTION "It is part of one of several proposals, of algorithms more optimized to run in Python, through a simple import.")

set(CMAKE_VERBOSE_MAKEFILE on)

set(CMAKE_CXX_STANDARD 11)
set(CXXFLAGS_O0 "-O0")
set(CXXFLAGS_O2 "-O2 -finline-functions -funswitch-loops -fpredictive-commoning -fgcse-after-reload -fno-tree-loop-vectorize -ftree-loop-distribute-patterns -fsplit-paths -fno-tree-slp-vectorize -fno-vect-cost-model -ftree-partial-pre -fpeel-loops -fipa-cp-clone")
set(CXXFLAGS_SSE2 "-O3 -march=native")
set(CXXFLAGS_AVX2 "-O3 -march=native -mavx2")

# Set an output directory for the .o and .so objects
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/lib)

add_library(naive0 SHARED ednaive.cpp)
add_library(naive2 SHARED ednaive.cpp)
add_library(ed128 SHARED ed128d.cpp)
add_library(ed256 SHARED ed256d.cpp)

set_property(TARGET naive0 PROPERTY COMPILE_FLAGS ${CXXFLAGS_O0})
set_property(TARGET naive2 PROPERTY COMPILE_FLAGS ${CXXFLAGS_O2})
set_property(TARGET ed128 PROPERTY COMPILE_FLAGS ${CXXFLAGS_SSE2})
set_property(TARGET ed256 PROPERTY COMPILE_FLAGS ${CXXFLAGS_AVX2})

set(CMAKE_BINARY_DIR ${PROJECT_BINARY_DIR}/bin)


#set(SOURCE_FILES main.cpp StopWatch.cpp ednaive.cpp ed128d.cpp ed256d.cpp EuclideanDistance.hpp)
#add_executable(main ${SOURCE_FILES})
