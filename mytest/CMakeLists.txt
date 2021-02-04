cmake_minimum_required(VERSION 2.6)

project("boost test" C CXX)

#
# if u wanna debug, do like this `cmake -DCMAKE_BUILD_TYPE=Debug`
#
if (NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release)
endif()

#
# Build Options
#
option(BUILD_TESTS  "Build all available test suites"    ON)

#
# Configuration
#
include("${PROJECT_SOURCE_DIR}/cmake/configuration.cmake")

#
# Modules
#
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${PROJECT_SOURCE_DIR}/cmake/modules")

#
# test suites
#
if (BUILD_TESTS)
    add_subdirectory(tests)
endif()