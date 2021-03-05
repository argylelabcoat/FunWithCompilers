cmake_minimum_required(VERSION 3.7)
project(O190012)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)


# Colorize!
add_compile_options(-fdiagnostics-color )


if(EXISTS ${CMAKE_BINARY_DIR}/conanbuildinfo_multi.cmake)
    include(${CMAKE_BINARY_DIR}/conanbuildinfo_multi.cmake)
else()
    include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
endif()


# Install Dirs
include(GNUInstallDirs)
include(CheckCXXSourceCompiles)
include(CheckCXXSymbolExists)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Conan Deps:
conan_basic_setup()




add_executable(hello)
target_sources(hello PRIVATE hello.cpp)

#Static start
set_target_properties(hello PROPERTIES LINK_SEARCH_START_STATIC 1)
set_target_properties(hello PROPERTIES LINK_SEARCH_END_STATIC 1)
set(CMAKE_FIND_LIBRARY_SUFFIXES ".a")
#Static Libs
set(CMAKE_EXE_LINKER_FLAGS "-static-libgcc -static-libstdc++")
set(CMAKE_CXX_LINK_FLAGS "${CMAKE_CXX_LINK_FLAGS} -static")

