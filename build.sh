#!/bin/bash

# Color variables
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
clear='\033[0m'

# Script
if [ "dpkg -s cmake" ]; then
    [ -d build ] || mkdir build
    cmake . -Bbuild
    cmake --build ./build
else
    echo -e "${red}Cmake is not installed.${clear}"
fi
