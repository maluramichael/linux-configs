#!/usr/bin/env bash

set -o pipefail
set -o nounset

cd "$HOME/development/libs" || return

CMAKE_BUILD_TYPE="Release"

build_cmake() {
  build_dir="$1/build"
  mkdir -p "$build_dir"
  cmake _D -B"$build_dir" -H"$1"
  (cd "$build_dir" && make && sudo make install)
}

create_build_dir() {
  build_dir="$1/build"
  mkdir -p "$build_dir"
  cd "$build_dir" || return
}

build_sdl_lib() {
  ./configure --prefix"$INSTALL_PREFIX"
  make install
}

# SDL
hg clone https://hg.libsdl.org/SDL
(
  create_build_dir SDL
  cmake -DCMAKE_BUILD_TYPE="$CMAKE_BUILD_TYPE" -DCMAKE_INSTALL_PREFIX="$INSTALL_PREFIX" ..
)

hg clone https://hg.libsdl.org/SDL_ttf
(
  create_build_dir SDL_ttf
  build_sdl_lib
)

hg clone https://hg.libsdl.org/SDL_image
(
  create_build_dir SDL_image
  build_sdl_lib
)

hg clone https://hg.libsdl.org/SDL_mixer
hg clone https://hg.libsdl.org/SDL_net

# QT
mkdir -p qt/source
mkdir -p qt/build
(
  cd qt/source || return
  git clone --recurse-submodules git://code.qt.io/qt/qt5.git --branch 5.12 .
  cd ../build || return
  ../source/configure -opensource -nomake examples -nomake tests -prefix "$INSTALL_PREFIX/qt5"
  make install
)

# BOOST
git clone --recurse-submodules git@github.com:boostorg/boost.git
(
  cd boost || return
  ./bootstrap.sh --prefix="$INSTALL_PREFIX"
  ./b2 -q -d0 install
)

# OpenCV
git clone git@github.com:opencv/opencv.git
(
  cd opencv || return
  mkdir build
  cd build || return
  cmake -DCMAKE_BUILD_TYPE="$CMAKE_BUILD_TYPE" -DCMAKE_INSTALL_PREFIX="$INSTALL_PREFIX" ..
)

# Other
git clone git@github.com:ArashPartow/exprtk.git
git clone git@github.com:amrayn/easyloggingpp.git
git clone git@github.com:google/googletest.git

git clone https://github.com/llvm/llvm-project.git
(
  cd llvm-project || return
  mkdir build
  cd build || return
  cmake \
    -DCMAKE_BUILD_TYPE="$CMAKE_BUILD_TYPE" \
    -DCMAKE_INSTALL_PREFIX="$INSTALL_PREFIX" \
    -DLLVM_ENABLE_PROJECTS=clang \
    ../llvm
  make install
)