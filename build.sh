#!/bin/sh

if [ "dpkg -s cmake" ]; then
    [ -d build ] || mkdir build
    cmake . -Bbuild
    cmake --build ./build
else
    echo "Cmake is not installed"
fi
