#!/bin/bash

set -x
set -e

BUILD_DIR=build-linux
mkdir -p ${BUILD_DIR}/lib1
mkdir -p ${BUILD_DIR}/lib2

g++ -fPIC -shared shared2.cpp -o ${BUILD_DIR}/lib2/libshared2.so
g++ -fPIC -shared shared1.cpp -o ${BUILD_DIR}/lib1/libshared1.so -L${BUILD_DIR}/lib2/ -lshared2 -Wl,-rpath=\$ORIGIN/../lib2
g++ -o ${BUILD_DIR}/main main.cpp -L${BUILD_DIR}/lib1 -lshared1 -Wl,-unresolved-symbols=ignore-in-shared-libs -Wl,-rpath=\$ORIGIN/lib1/
