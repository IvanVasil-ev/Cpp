#!/bin/sh

[ -d build ] || mkdir build
cmake . -Bbuild
cmake --build ./build
