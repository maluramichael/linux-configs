#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

LIBS_HOME="$DEV_HOME/libs"
cd "$LIBS_HOME" || return

CMAKE_BUILD_TYPE="Release"

header() {
  if [ -x "$(command -v figlet)" ]; then
    figlet "$1"
  fi
}

build_gmp() {
  header gmp
  if [ ! -d "$LIBS_HOME/gmp" ]; then
    hg clone https://gmplib.org/repo/gmp
  else
    (cd "$LIBS_HOME/gmp" && hg pull && hg update)
  fi
  (
    cd gmp || return
    ./configure --disable-shared --enable-static --prefix="$INSTALL_PREFIX"
    make && make check && make install
  )
}

build_mpfr() {
  header mpfr
  if [ ! -d "$LIBS_HOME/mpfr" ]; then
    svn checkout https://scm.gforge.inria.fr/anonscm/svn/mpfr/trunk mpfr
  else
    (cd "$LIBS_HOME/mpfr" && svn update)
  fi
  (
    cd mpfr || return
    ./configure --disable-shared --enable-static --prefix="$INSTALL_PREFIX"
    make && make check && make install
  )
}

build_mpc() {
  header mpc
  if [ ! -d "$LIBS_HOME/mpc" ]; then
    git clone https://scm.gforge.inria.fr/anonscm/git/mpc/mpc.git
  else
    (cd "$LIBS_HOME/mpc" && git pull)
  fi
  (
    cd mpc || return
    ./configure --disable-shared --enable-static --prefix="$INSTALL_PREFIX" --with-gmp="$INSTALL_PREFIX"
    make && make check && make install
  )
}

build_llvm() {
  header llvm
  if [ ! -d "$LIBS_HOME/llvm" ]; then
    git clone https://github.com/llvm/llvm-project.git llvm
  else
    (cd "$LIBS_HOME/llvm" && git pull)
  fi
  (
    cd llvm || return
    mkdir -p build
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
  header libpng
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
  header cairo
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
  header pixman
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
    header $i
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
  header qt
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
  header boost
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
  header opencv
  if [ ! -d "$LIBS_HOME/opencv" ]; then
    git clone git@github.com:opencv/opencv.git
  else
    (cd "$LIBS_HOME/opencv" && git pull)
  fi
  (
    cd opencv || return
    mkdir -p build
    cd build || return
    cmake -DCMAKE_BUILD_TYPE="$CMAKE_BUILD_TYPE" -DCMAKE_INSTALL_PREFIX="$INSTALL_PREFIX" ..
    make
    make install
  )
}

build_kaitai_struct() {
  header kaitai
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
    sbt compilerJVM/universal:packageBin
  )
}

build_eigen() {
  header eigen
  if [ ! -d "$LIBS_HOME/eigen" ]; then
    git clone https://gitlab.com/libeigen/eigen.git
  else
    (cd "$LIBS_HOME/eigen" && git pull)
  fi
  (
    cd eigen || return
    mkdir -p build
    cd build || return
    cmake -DCMAKE_BUILD_TYPE="$CMAKE_BUILD_TYPE" -DCMAKE_INSTALL_PREFIX="$INSTALL_PREFIX" ..
    make
    make install
  )
}

build_exprtk() {
  header exprtk
  if [ ! -d "$LIBS_HOME/exprtk" ]; then
    git clone git@github.com:ArashPartow/exprtk.git
  else
    (cd "$LIBS_HOME/exprtk" && git pull)
  fi
}

build_easylogging() {
  header easyloggingpp
  if [ ! -d "$LIBS_HOME/easyloggingpp" ]; then
    git clone git@github.com:amrayn/easyloggingpp.git
  else
    (cd "$LIBS_HOME/easyloggingpp" && git pull)
  fi
  (
    cd easyloggingpp || return
    mkdir -p build
    cd build || return
    cmake -DCMAKE_BUILD_TYPE="$CMAKE_BUILD_TYPE" -DCMAKE_INSTALL_PREFIX="$INSTALL_PREFIX" ..
    make
    make install
  )
}
  
build_gtest() {
  header gtest
  if [ ! -d "$LIBS_HOME/gtest" ]; then
    git clone git@github.com:google/googletest.git gtest
  else
    (cd "$LIBS_HOME/gtest" && git pull)
  fi
  (
    cd gtest || return
    mkdir -p build
    cd build || return
    cmake -DCMAKE_BUILD_TYPE="$CMAKE_BUILD_TYPE" -DCMAKE_INSTALL_PREFIX="$INSTALL_PREFIX" ..
    make
    make install
  )
}

build_llvm
build_libpng
build_cairo
build_pixman
build_sdl
build_qt
build_boost
build_opencv
build_kaitai_struct
build_eigen
build_exprtk
build_easylogging
build_gtest