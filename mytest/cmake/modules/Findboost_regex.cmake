
find_library(boost_regex_LIBRARY boost_regex HINTS "${PROJECT_SOURCE_DIR}/lib" "/usr/local/boost/lib" NO_DEFAULT_PATH)

find_path(boost_regex_INCLUDE boost/regex.hpp HINTS "${PROJECT_SOURCE_DIR}/include" "/usr/local/boost/include" NO_DEFAULT_PATH)

if(boost_regex_LIBRARY AND boost_regex_INCLUDE)
    set(boost_regex_FOUND TRUE)
    
    message(STATUS "${Green}Found boost regex library at: ${boost_regex_LIBRARY}${Reset}")
    message(STATUS "${Green}Found boost regex include at: ${boost_regex_INCLUDE}${Reset}")
else()
    message(FATAL_ERROR "${Red}Failed to locate boost regex dependency.${Reset}")
endif()

get_filename_component(boost_regex_LIBRARY_NAME ${boost_regex_LIBRARY} NAME_WE)
string(REGEX REPLACE "^lib" "" boost_regex_LIBRARY_NAME ${boost_regex_LIBRARY_NAME})
get_filename_component(boost_regex_LIBRARY_PATH ${boost_regex_LIBRARY} PATH)

message(STATUS "${Blue}boost_regex_LIBRARY_PATH=${boost_regex_LIBRARY_PATH}${Reset}")
