#!/bin/bash

cd $HOME/development/libs

# SDL
hg clone https://hg.libsdl.org/SDL
hg clone https://hg.libsdl.org/SDL_ttf
hg clone https://hg.libsdl.org/SDL_image
hg clone https://hg.libsdl.org/SDL_mixer
hg clone https://hg.libsdl.org/SDL_net

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
