cmake_minimum_required(VERSION 3.8)
#set(CMAKE_BUILD_TYPE Release)
set(CMAKE_BUILD_TYPE Debug)
project(VectorDistance)

# For development, only,
# Comment the next line after the project is working properly
# set(CMAKE_VERBOSE_MAKEFILE on)

set(VectorDistance_NAME "VectorDistance Library")
message(STATUS "${VectorDistance_NAME}")

set(VectorDistance_VERSION_MAJOR "1")
set(VectorDistance_VERSION_MINOR "1")
set(VectorDistance_VERSION_PATCH "2")

set(VectorDistance_VERSION "${VectorDistance_VERSION_MAJOR}.")
set(VectorDistance_VERSION "${VectorDistance_VERSION}${VectorDistance_VERSION_MINOR}.")
set(VectorDistance_VERSION "${VectorDistance_VERSION}${VectorDistance_VERSION_PATCH}")
message(STATUS "version: ${VectorDistance_VERSION}")

# Set the reference standard of the C++ Language
set(CMAKE_CXX_STANDARD 11)

# Remove the "lib" prefix from all library objects
set(CMAKE_SHARED_LIBRARY_PREFIX "")
# Set the ".so" suffix in all library objects
set(CMAKE_SHARED_LIBRARY_SUFFIX ".so")

### Flags
set(CXXFLAGS_O0 "-O0")
set(CXXFLAGS_O2 "-O2 -finline-functions -funswitch-loops -fpredictive-commoning -fgcse-after-reload -fno-tree-loop-vectorize -ftree-loop-distribute-patterns -fsplit-paths -fno-tree-slp-vectorize -fno-vect-cost-model -ftree-partial-pre -fpeel-loops -fipa-cp-clone")
set(CXXFLAGS_SSE2 "-O3 -march=native")
set(CXXFLAGS_AVX2 "-O3 -march=native -mavx2")

### Output
# Set the output directory for the .so
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/lib)

# Set the output directory for the binaries
set(CMAKE_BINARY_DIR ${PROJECT_BINARY_DIR}/bin)

# Set the output directory for the executables
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)

# Option to choose Vector size usage
set(VECTOR_SIZE "auto" CACHE STRING "Vector size chosen")
set_property(CACHE VECTOR_SIZE PROPERTY STRINGS auto 128 256)
message(STATUS "Vector size chosen: ${VECTOR_SIZE}")

### Build
# Create the DistanceMeasureFactory.so artifact
add_library(DistanceMeasureFactory SHARED adapter/cpp/DistanceMeasureFactory.cpp adapter/cpp/DistanceMeasureFactory.hpp)

if ("${VECTOR_SIZE}" MATCHES "auto")

    add_library(distance SHARED distance-measure/baseline_distance.cpp distance-measure/baseline_distance.hpp distance-measure/distance_measure.hpp)
    set_property(TARGET distance PROPERTY COMPILE_FLAGS ${CXXFLAGS_SSE2})

    target_compile_definitions(DistanceMeasureFactory PRIVATE _0)
    target_link_libraries(DistanceMeasureFactory distance)

elseif ("${VECTOR_SIZE}" MATCHES "auto-no-opt")

    add_library(distance SHARED distance-measure/baseline_distance.cpp distance-measure/baseline_distance.hpp distance-measure/distance_measure.hpp)
    set_property(TARGET distance PROPERTY COMPILE_FLAGS ${CXXFLAGS_O0})

    target_compile_definitions(DistanceMeasureFactory PRIVATE _0)
    target_link_libraries(DistanceMeasureFactory distance)

elseif ("${VECTOR_SIZE}" MATCHES "128")

    add_library(distance SHARED distance-measure/__m128d__distance.cpp distance-measure/__m128d__distance.hpp distance-measure/distance_measure.hpp)
    set_property(TARGET distance PROPERTY COMPILE_FLAGS ${CXXFLAGS_SSE2})

    target_compile_definitions(DistanceMeasureFactory PRIVATE _128)
    target_link_libraries(DistanceMeasureFactory distance)

elseif ("${VECTOR_SIZE}" MATCHES "256")

    add_library(distance SHARED distance-measure/__m256d__distance.cpp distance-measure/__m256d__distance.hpp distance-measure/distance_measure.hpp)
    set_property(TARGET distance PROPERTY COMPILE_FLAGS ${CXXFLAGS_AVX2})

    target_compile_definitions(DistanceMeasureFactory PRIVATE _256)
    target_link_libraries(DistanceMeasureFactory distance)

else()

    message (FATAL_ERROR "Vector size '${VECTOR_SIZE}' not recognized")

endif()


###################
### INTEGRATION ###
###################

# Create the VectorDistanceMeasureAdapter.so artifact - deprecated
add_library(VectorDistanceAdapter SHARED adapter/cpp/DistanceMeasureAdapter.cpp)

###################
### DEBUG #########
###################

add_library(benchmark SHARED benchmark/benchmark.cpp benchmark/benchmark.hpp benchmark/StopWatch.cpp distance-measure/distance_measure.hpp)

add_executable(main debug/main.cpp)
target_link_libraries(main benchmark DistanceMeasureFactory)

###################
###################
###################

