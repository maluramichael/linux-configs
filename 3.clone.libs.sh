#!/usr/bin/env bash
set -o pipefail
set -o nounset

cd $HOME/development/libs

build_cmake(){
    build_dir="$1/build"
    mkdir -p ${build_dir}
    cmake -B${build_dir} -H${1}
    (cd ${build_dir} && make && sudo make install)
}

# SDL
hg clone https://hg.libsdl.org/SDL
build_cmake SDL

hg clone https://hg.libsdl.org/SDL_ttf
build_cmake SDL_ttf

hg clone https://hg.libsdl.org/SDL_image
build_cmake SDL_image

hg clone https://hg.libsdl.org/SDL_mixer
build_cmake SDL_mixer

hg clone https://hg.libsdl.org/SDL_net
build_cmake SDL_net

# QT
git clone --recurse-submodules git://code.qt.io/qt/qt5.git --branch 5.12 qt

# BOOST
git clone --recurse-submodules git@github.com:boostorg/boost.git

# OpenCV
git clone git@github.com:opencv/opencv.git

# Other
git clone git@github.com:ArashPartow/exprtk.git
git clone git@github.com:amrayn/easyloggingpp.git
git clone git@github.com:google/googletest.git
