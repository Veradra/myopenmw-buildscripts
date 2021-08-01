#!/bin/bash

echo building build env, might take howeverthefuck long.
CI/before_script.msvc.sh -k -p Win64 -v 2019 -N
cp postbuild.sh MSVC2019_64_Ninja
cd MSVC2019_64_Ninja
./postbuild.sh