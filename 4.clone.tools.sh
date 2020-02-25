#!/usr/bin/env bash
set -o pipefail
set -o nounset

cd $HOME/tools

build_cmake(){
    build_dir="$1/build"
    mkdir -p ${build_dir}
    cmake -B${build_dir} -H${1}
    (cd ${build_dir} && make)
}

git clone git@gitlab.kitware.com:cmake/cmake.git
(cd cmake && ./boostrap --parallel=8)

git clone git@github.com:alacritty/alacritty.git
(cd alacritty && make binary)

git clone git@github.com:debauchee/barrier.git
build_cmake barrier

git clone git@github.com:godotengine/godot.git
(cd godot && scons platform=x11 target=debug bits=64 )
