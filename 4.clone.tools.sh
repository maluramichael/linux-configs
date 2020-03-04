#!/usr/bin/env bash

set -o pipefail
set -o nounset

cd "$HOME/tools" || return

build_cmake() {
  git clone git@gitlab.kitware.com:cmake/cmake.git
  (
    cd cmake || return
    ./bootstrap --prefix="$INSTALL_PREFIX" --parallel=8
    ./configure
    make
    make install
  )
}

build_make() {
  git clone https://git.savannah.gnu.org/git/make.git
  (
    cd make || return
    ./bootstrap --prefix="$INSTALL_PREFIX"
    ./configure
    make
    make install
  )
}

build_gdb() {
  git clone git://sourceware.org/git/binutils-gdb.git
  (
    cd binutils-gdb || return
    ./configure --prefix="$INSTALL_PREFIX"
    make
    make install
  )
}

build_apps() {
  git clone git@github.com:alacritty/alacritty.git
  (cd alacritty && make binary)

  git clone git@github.com:debauchee/barrier.git
  (
    cd barrier || return
    cd build || return
    cmake ..
    make
  )

  git clone git@github.com:godotengine/godot.git
  (cd godot && scons platform=x11 target=debug bits=64)

  git clone https://github.com/themix-project/oomox.git --recursive
  (cd oomox && make)
}

build_cmake
build_make
build_gdb
build_apps
