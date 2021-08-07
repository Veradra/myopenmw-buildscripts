#!/bin/bash
source activate_msvc.sh

release() {
    echo "Building 'Release', output will be in the Release folder."
    ninja -f build-Release.ninja
    exit
}

debug() {
    echo "Building 'Debug', output will be in the Debug folder."
    ninja -f build-Debug.ninja
    exit
}

relwithdebinfo() {
    echo "Building 'RelWithDebInfo', output will be in the RelWithDebInfo folder"
    ninja -f build-RelWithDebInfo.ninja
    exit
}

all() {
    echo "Building 'all', why?"
    ninja -f build-Release.ninja
    ninja -f build-Debug.ninja
    ninja -f build-RelWithDebInfo.ninja
    exit
}


echo "Choose buildtype"
echo
echo "1) Release"
echo "2) Debug"
echo "3) RelWithDebInfo"
echo "4) All"

read -t 10 choice

case $choice in
    "1")release;;
    "2")debug;;
    "3")relwithdebinfo;;
    "4")all;;
    *)echo "No valid selection made, exiting";;
esac