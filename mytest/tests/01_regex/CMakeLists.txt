
cmake_minimum_required(VERSION 2.6)

#
# module Required
#
find_package(boost_regex REQUIRED)
include_directories(SYSTEM ${boost_regex_INCLUDE})

link_directories(${boost_regex_LIBRARY_PATH})

#
# build
#
add_executable(hello_regex hello_regex.cpp)
target_link_libraries(hello_regex ${boost_regex_LIBRARY_NAME})
