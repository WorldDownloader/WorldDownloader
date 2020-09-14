cmake_minimum_required(VERSION 3.10)
project(WorldDownloader)

include_directories(include)

set(LIBMINECRAFTPE_PATH "" CACHE FILEPATH "Path to libminecraftpe.so to link against")

include(../mod-ndk-gnustl/CMakeLists.txt)

set(CMAKE_CXX_STANDARD 17)

add_library(WorldDownloader SHARED main.cpp)
target_link_libraries(WorldDownloader ${LIBMINECRAFTPE_PATH})
