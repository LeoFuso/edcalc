cmake_minimum_required(VERSION 3.8)
set(CMAKE_BUILD_TYPE Release)
project(PyEDistance)

set(CMAKE_VERBOSE_MAKEFILE on)

set(PyEDistance_NAME "PyEDistance Library")
message(STATUS "${PyEDistance_NAME}")

set(PyEDistance_VERSION_MAJOR "1")
set(PyEDistance_VERSION_MINOR "0")
set(PyEDistance_VERSION_PATCH "0")

set(PyEDistance_VERSION "${PyEDistance_VERSION_MAJOR}.")
set(PyEDistance_VERSION "${PyEDistance_VERSION}${PyEDistance_VERSION_MINOR}.")
set(PyEDistance_VERSION "${PyEDistance_VERSION}${PyEDistance_VERSION_PATCH}")
message(STATUS "version: ${PyEDistance_VERSION}")

# Set the reference standard of the C++ Language
set(CMAKE_CXX_STANDARD 11)


# Remove the "lib" prefix from all library objects
set(CMAKE_SHARED_LIBRARY_PREFIX  "")
# Set the ".so" suffix in all library objects
set(CMAKE_SHARED_LIBRARY_SUFFIX ".so")


### Flags
set(CXXFLAGS_O0 "-O0")
set(CXXFLAGS_O2 "-O2 -finline-functions -funswitch-loops -fpredictive-commoning -fgcse-after-reload -fno-tree-loop-vectorize -ftree-loop-distribute-patterns -fsplit-paths -fno-tree-slp-vectorize -fno-vect-cost-model -ftree-partial-pre -fpeel-loops -fipa-cp-clone")
set(CXXFLAGS_SSE2 "-O3 -march=native")
set(CXXFLAGS_AVX2 "-O3 -march=native -mavx2")


# Set the output directory for the .so
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/lib)

# Set the output directory for the binaries
set(CMAKE_BINARY_DIR ${PROJECT_BINARY_DIR}/bin)

# Set the output directory for the executables
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)

add_library(naive0 SHARED ed_baseline.cpp ed_baseline.hpp euclidean_distance.hpp)
add_library(naive2 SHARED ed_baseline.cpp ed_baseline.hpp euclidean_distance.hpp)
add_library(ed128 SHARED ed_128d.cpp  ed_128d.hpp euclidean_distance.hpp)
add_library(ed256 SHARED ed_256d.cpp ed_256d.hpp euclidean_distance.hpp)

set_property(TARGET naive0 PROPERTY COMPILE_FLAGS ${CXXFLAGS_O0})
set_property(TARGET naive2 PROPERTY COMPILE_FLAGS ${CXXFLAGS_O2})
set_property(TARGET ed128 PROPERTY COMPILE_FLAGS ${CXXFLAGS_SSE2})
set_property(TARGET ed256 PROPERTY COMPILE_FLAGS ${CXXFLAGS_AVX2})

add_library(benchmark SHARED benchmark.cpp benchmark.hpp StopWatch.cpp euclidean_distance.hpp)

add_executable(main main.cpp)

target_link_libraries(main benchmark naive0 ed128 ed256)


#set(SOURCE_FILES main.cpp StopWatch.cpp ednaive.cpp ed128d.cpp ed256d.cpp EuclideanDistance.hpp)
#add_executable(main ${SOURCE_FILES})
