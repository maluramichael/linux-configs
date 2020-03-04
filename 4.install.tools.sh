#!/usr/bin/env bash

set -o pipefail
set -o nounset

cd "$HOME/tools" || return

build_cmake() {
  if [ ! -d "cmake" ]; then
    git clone git@gitlab.kitware.com:cmake/cmake.git
  else
    (cd "cmake" && git pull)
  fi
  (
    cd cmake || return
    ./bootstrap --prefix="$INSTALL_PREFIX" --parallel=8
    ./configure
    make
    make install
  )
}

build_make() {
  if [ ! -d "make" ]; then
    git clone https://git.savannah.gnu.org/git/make.git
  else
    (cd "make" && git pull)
  fi
  (
    cd make || return
    ./bootstrap --prefix="$INSTALL_PREFIX"
    ./configure
    make
    make install
  )
}

build_gdb() {
  if [ ! -d "binutils-gdb" ]; then
    git clone git://sourceware.org/git/binutils-gdb.git
  else
    (cd "binutils-gdb" && git pull)
  fi
  (
    cd binutils-gdb || return
    ./configure --prefix="$INSTALL_PREFIX"
    make
    make install
  )
}

build_alacritty() {
  if [ ! -d "alacritty" ]; then
    git clone git@github.com:alacritty/alacritty.git
  else
    (cd "alacritty" && git pull)
  fi
  (cd alacritty && make binary)
}

build_barrier() {
  if [ ! -d "barrier" ]; then
    git clone git@github.com:debauchee/barrier.git
  else
    (cd "barrier" && git pull)
  fi
  (
    mkdir -p barrier/build
    cd barrier/build || return
    cmake ..
    make
  )
}

build_godot() {
  if [ ! -d "godot" ]; then
    git clone git@github.com:godotengine/godot.git
  else
    (cd "godot" && git pull)
  fi
  (cd godot && scons platform=x11 target=debug bits=64)
}

build_oomox() {
  if [ ! -d "oomox" ]; then
    git clone https://github.com/themix-project/oomox.git --recursive
  else
    (cd "oomox" && git pull)
  fi
  (cd oomox && make)
}

build_kaitai_webide() {
  if [ ! -d "kaitai_struct_webide" ]; then
    git clone --recursive https://github.com/kaitai-io/kaitai_struct_webide
  else
    (cd "kaitai_struct_webide" && git pull)
  fi
  (
    cd kaitai_struct_webide || return
    npm install
  )
}

build_cmake
build_make
build_gdb
build_alacritty
build_barrier
build_godot
build_oomox
build_kaitai_webide
