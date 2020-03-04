#!/usr/bin/env bash

set -o pipefail
set -o nounset

LIBS_HOME="$HOME/development/libs"
cd "$LIBS_HOME" || return

CMAKE_BUILD_TYPE="Release"

build_llvm() {
  if [ ! -d "$LIBS_HOME/llvm-project" ]; then
    git clone https://github.com/llvm/llvm-project.git
  else
    (cd "$LIBS_HOME/llvm-project" && git pull)
  fi
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
}

build_libpng() {
  if [ ! -d "$LIBS_HOME/libpng" ]; then
    git clone https://git.code.sf.net/p/libpng/code libpng
  else
    (cd "$LIBS_HOME/libpng" && git pull)
  fi
  (
    cd libpng || return
    ./autogen.sh
    ./configure --prefix "$INSTALL_PREFIX"
    make
    make install
  )
}

build_cairo() {
  if [ ! -d "$LIBS_HOME/cairo" ]; then
    git clone git://anongit.freedesktop.org/git/cairo
  else
    (cd "$LIBS_HOME/cairo" && git pull)
  fi
  (
    cd cairo || return
    ./autogen.sh
    ./configure --prefix "$INSTALL_PREFIX"
    make
    make install
  )
}

build_pixman() {
  if [ ! -d "$LIBS_HOME/pixman" ]; then
    git clone git://anongit.freedesktop.org/git/pixman
  else
    (cd "$LIBS_HOME/pixman" && git pull)
  fi
  (
    cd pixman || return
    ./autogen.sh
    ./configure --prefix "$INSTALL_PREFIX"
    make
    make install
  )
}

build_sdl() {
  for i in "SDL" "SDL_ttf" "SDL_image" "SDL_mixer" "SDL_net"; do
    if [ ! -d "$LIBS_HOME/$i" ]; then
      hg clone https://hg.libsdl.org/"$i"
    else
      (cd "$LIBS_HOME/$i" && hg pull && hg update)
    fi
    (
      cd "$i" || return
      ./configure --prefix "$INSTALL_PREFIX"
      make
      make install
    )
  done
}

build_qt() {
  if [ ! -d "$LIBS_HOME/qt5" ]; then
    git clone --recurse-submodules git://code.qt.io/qt/qt5.git --jobs 8 --branch 5.12 qt5
  else
    (cd "$LIBS_HOME/qt5" && git pull)
  fi
  (
    cd qt5 || return
    ./configure -opensource -confirm-license -nomake examples -nomake tests -silent -prefix "$INSTALL_PREFIX/qt5"
    make
    make install
  )
}

build_boost() {
  if [ ! -d "$LIBS_HOME/boost" ]; then
    git clone --recurse-submodules git@github.com:boostorg/boost.git
  else
    (cd "$LIBS_HOME/boost" && git pull)
  fi
  (
    cd boost || return
    ./bootstrap.sh --prefix="$INSTALL_PREFIX"
    ./b2 -q -d0 install
  )
}

build_opencv() {
  if [ ! -d "$LIBS_HOME/opencv" ]; then
    git clone git@github.com:opencv/opencv.git
  else
    (cd "$LIBS_HOME/opencv" && git pull)
  fi
  (
    cd opencv || return
    mkdir build
    cd build || return
    cmake -DCMAKE_BUILD_TYPE="$CMAKE_BUILD_TYPE" -DCMAKE_INSTALL_PREFIX="$INSTALL_PREFIX" ..
    make
    make install
  )
}

build_kaitai_struct() {
  if [ ! -d "$LIBS_HOME/kaitai_struct" ]; then
    git clone --recursive https://github.com/kaitai-io/kaitai_struct.git
  else
    (
      cd "$LIBS_HOME/kaitai_struct" || return
      git pull
      git submodule update --recursive
    )
  fi
  (
    cd kaitai_struct || return
    sbt compilerJVM/debian:packageBin
  )
}

build_other() {
  git clone git@github.com:ArashPartow/exprtk.git
  git clone git@github.com:amrayn/easyloggingpp.git

  if [ ! -d "$LIBS_HOME/gtest" ]; then
    git clone git@github.com:google/googletest.git gtest
  else
    (cd "$LIBS_HOME/gtest" && git pull)
  fi
  (
    cd gtest || return
    mkdir build
    cd build || return
    cmake -DCMAKE_BUILD_TYPE="$CMAKE_BUILD_TYPE" -DCMAKE_INSTALL_PREFIX="$INSTALL_PREFIX" ..
    make
    make install
  )
}

build_llvm
build_libpng
build_cariro
build_pixman
build_sdl
build_qt
build_boost
build_opencv
build_kaitai_struct
build_other
