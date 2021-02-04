
cmake_minimum_required(VERSION 2.6)

#
# Build Options
#
option(BUILD_01_regex   "build 01_regex"     ON)

if (BUILD_01_regex)
    add_subdirectory(01_regex)
endif()
