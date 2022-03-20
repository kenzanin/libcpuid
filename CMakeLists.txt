cmake_minimum_required(VERSION 3.0)
project(cpuid)
set(CMAKE_C_STANDARD "11")

set(CPUID_VERSION "20211210")

set(CMAKE_C_FLAGS
    "${CMAKE_C_FLAGS} -Wall -W -Wshadow -Wcast-align -Wredundant-decls -Wbad-function-cast \
    -Wcast-qual -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-prototypes \
    -Wimplicit-fallthrough -Wunused-parameter -D_FILE_OFFSET_BITS=64 -DVERSION=${CPUID_VERSION}"
)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fvisibility=hidden")

add_library(cpuid SHARED cpuid.c)

add_executable(main main.cpp)
target_link_libraries(main cpuid)
