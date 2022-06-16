cmake_minimum_required(VERSION 3.8)
set(CMAKE_BUILD_TYPE Release)
project(VectorDistance)

# For development, only,
# Comment the next line after the project is working properly
set(CMAKE_VERBOSE_MAKEFILE on)

set(DISTANCE_NAME "Distance Library")
message(STATUS "${DISTANCE_NAME}")

set(DISTANCE_VERSION_MAJOR "1")
set(DISTANCE_VERSION_MINOR "0")
set(DISTANCE_VERSION_PATCH "0")

set(DISTANCE_VERSION "${DISTANCE_VERSION_MAJOR}.")
set(DISTANCE_VERSION "${DISTANCE_VERSION}${DISTANCE_VERSION_MINOR}.")
set(DISTANCE_VERSION "${DISTANCE_VERSION}${DISTANCE_VERSION_PATCH}")
message(STATUS "version: ${DISTANCE_VERSION}")

# Set the reference standard of the C++ Language
set(CMAKE_CXX_STANDARD 11)

### Flags
set(CXXFLAGS_O0 "-O0")
set(CXXFLAGS_O2 "-O2 -finline-functions -funswitch-loops -fpredictive-commoning -fgcse-after-reload -fno-tree-loop-vectorize -ftree-loop-distribute-patterns -fsplit-paths -fno-tree-slp-vectorize -fno-vect-cost-model -ftree-partial-pre -fpeel-loops -fipa-cp-clone")
set(CXXFLAGS_SSE2 "-O3 -march=native")
set(CXXFLAGS_AVX2 "-O3 -march=native -mavx2")

### Output
# Set the output directory for all Dynamic and Static Libs
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/lib)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/lib)

# Set the output directory for the binaries
set(CMAKE_BINARY_DIR ${PROJECT_BINARY_DIR}/bin)

# Set the output directory for the executables
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)

# Option to choose Vector size usage
set(VECTOR_SIZE "auto" CACHE STRING "Vector size chosen")
set_property(CACHE VECTOR_SIZE PROPERTY STRINGS auto 128 256)
message(STATUS "Vector size chosen: ${VECTOR_SIZE}")

### Build
# Create the DistanceMeasureFactory artifact
add_library(DistanceMeasureFactory STATIC distance-measure/distance_measure_factory.cpp distance-measure/distance_measure_factory.hpp)
set_target_properties(DistanceMeasureFactory PROPERTIES PUBLIC_HEADER distance-measure/distance_measure_factory.hpp)

if ("${VECTOR_SIZE}" MATCHES "auto")

    add_library(DistanceMeasure STATIC distance-measure/baseline_distance.cpp distance-measure/baseline_distance.hpp distance-measure/distance_measure.hpp)
    set_target_properties(DistanceMeasure PROPERTIES PUBLIC_HEADER distance-measure/baseline_distance.hpp)
    set_property(TARGET DistanceMeasure PROPERTY COMPILE_FLAGS ${CXXFLAGS_SSE2})

    target_compile_definitions(DistanceMeasureFactory PRIVATE _0)
    target_link_libraries(DistanceMeasureFactory DistanceMeasure)

elseif ("${VECTOR_SIZE}" MATCHES "auto-no-opt")

    add_library(DistanceMeasure STATIC distance-measure/baseline_distance.cpp distance-measure/baseline_distance.hpp distance-measure/distance_measure.hpp)
    set_target_properties(DistanceMeasure PROPERTIES PUBLIC_HEADER distance-measure/baseline_distance.hpp)
    set_property(TARGET DistanceMeasure PROPERTY COMPILE_FLAGS ${CXXFLAGS_O0})

    target_compile_definitions(DistanceMeasureFactory PRIVATE _0)
    target_link_libraries(DistanceMeasureFactory DistanceMeasure)

elseif ("${VECTOR_SIZE}" MATCHES "128")

    add_library(DistanceMeasure STATIC distance-measure/__m128d__distance.cpp distance-measure/__m128d__distance.hpp distance-measure/distance_measure.hpp)
    set_target_properties(DistanceMeasure PROPERTIES PUBLIC_HEADER distance-measure/__m128d__distance.hpp)
    set_property(TARGET DistanceMeasure PROPERTY COMPILE_FLAGS ${CXXFLAGS_SSE2})

    target_compile_definitions(DistanceMeasureFactory PRIVATE _128)
    target_link_libraries(DistanceMeasureFactory DistanceMeasure)

elseif ("${VECTOR_SIZE}" MATCHES "256")

    add_library(DistanceMeasure STATIC distance-measure/__m256d__distance.cpp distance-measure/__m256d__distance.hpp distance-measure/distance_measure.hpp)
    set_target_properties(DistanceMeasure PROPERTIES PUBLIC_HEADER distance-measure/__m256d__distance.hpp)
    set_property(TARGET DistanceMeasure PROPERTY COMPILE_FLAGS ${CXXFLAGS_AVX2})

    target_compile_definitions(DistanceMeasureFactory PRIVATE _256)
    target_link_libraries(DistanceMeasureFactory DistanceMeasure)

else()
    message (FATAL_ERROR "Vector size '${VECTOR_SIZE}' not recognized")
endif()

###################
###     Libs    ###
###################

# Create Distance artifact
#add_library(VectorDistance SHARED adapter/cpp/DistanceMeasureAdapter.cpp)
#target_link_libraries(VectorDistance DistanceMeasureFactory)

add_library(DistanceAdapter STATIC distance-measure/distance_measure_adapter.cpp distance-measure/distance_measure_adapter.hpp)
set_target_properties(DistanceAdapter PROPERTIES PUBLIC_HEADER distance-measure/distance_measure_adapter.hpp)
target_link_libraries(DistanceAdapter DistanceMeasureFactory)

add_library(Distance STATIC distance-measure/distance.c distance-measure/distance.h)
set_target_properties(Distance PROPERTIES PUBLIC_HEADER distance-measure/distance.h)
target_link_libraries(Distance DistanceAdapter)

include_directories(Distance ${CMAKE_SOURCE_DIR}/distance_measure)

include(GNUInstallDirs)
install(
        TARGETS DistanceMeasure DistanceMeasureFactory DistanceAdapter Distance
        PUBLIC_HEADER
            DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
        ARCHIVE
            DESTINATION ${CMAKE_INSTALL_LIBDIR}/distance
)

###################
### DEBUG #########
###################

#add_library(benchmark SHARED benchmark/benchmark.cpp benchmark/benchmark.hpp benchmark/StopWatch.cpp distance-measure/distance_measure.hpp)

#add_executable(main debug/main.cpp)
#target_link_libraries(main benchmark DistanceMeasureFactory)

#add_executable(main_c debug/main.c)
#target_link_libraries(main_c VectorDistanceAdapterC)
###################
###################
###################

