#!/bin/bash
echo "Pulling an updated version of the git repository."
git pull
echo "Building build env, might take howeverthefuck long."
CI/before_script.msvc.sh -k -p Win64 -v 2019 -N
cp build.sh MSVC2019_64_Ninja
cd MSVC2019_64_Ninja
./build.sh