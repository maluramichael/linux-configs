#!/bin/bash

cd $HOME/development/libs

# SDL
hg clone https://hg.libsdl.org/SDL
hg clone https://hg.libsdl.org/SDL_ttf
hg clone https://hg.libsdl.org/SDL_image
hg clone https://hg.libsdl.org/SDL_mixer
hg clone https://hg.libsdl.org/SDL_net

# QT
git clone git://code.qt.io/qt/qt5.git --branch 5.12 qt

# BOOST
git clone --recurse-submodules git@github.com:boostorg/boost.git
