#!/bin/bash
if [ -d build ]; then
    cd build
    else
    echo "-- Build folder not found, creating new build folder.."
    mkdir build
    cd build
fi

if cmake -DCMAKE_TOOLCHAIN_FILE=/opt/vcpkg/scripts/buildsystems/vcpkg.cmake ..; then
    echo "-- Successfully build using Toolchain"
else
    echo "-- Unable to build using Toolchain"
    echo "-- Trying to build without Toolchain"
    if cmake ..; then
            echo "-- Successfully build without Toolchain"
        else
            echo "-- Unable to build with cmake"
            echo "-- ..removing failed CMakeCache"
            rm -rf CMakeCache.txt
            exit -1
    fi 
fi

if make -j; then
    echo "-- Make succesful"
else
    echo "-- Make failed"
    exit 1
fi

exit 0