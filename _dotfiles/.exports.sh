#!/usr/bin/env bash

CORES=$(nproc)
export TERMINAL=xterm

export HISTCONTROL=ignoreboth

# language settings
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# useful working directories
export DEV_HOME="$HOME/development"
export WORKON_HOME="$DEV_HOME/virtualenvs"
export PROJECT_HOME="$DEV_HOME/projects"
export LIBS_HOME="$DEV_HOME/libs"
export TOOLS_HOME="$DEV_HOME/tools"
export COMPOSER_HOME="$DEV_HOME/composer"

# react
export REACT_EDITOR=code

# nodejs
export NVM_DIR="$DEV_HOME/nvm"

# rust
export CARGO_HOME="$DEV_HOME/cargo"
export RUSTUP_HOME="$DEV_HOME/rustup"

# make
export CC="gcc"
export CXX="g++"
export MAKEFLAGS="-j$CORES"
export INSTALL_PREFIX="$HOME/.local"

# set path variable
addToPATH "$HOME/.yarn/bin"
addToPATH "$CARGO_HOME/bin"
addToPATH "$(go env GOPATH)/bin"
addToPATH "$COMPOSER_HOME/bin"
addToPATH "/usr/bin"
