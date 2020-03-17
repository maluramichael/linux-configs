#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

if [ ! -d "$TOOLS_HOME/alacritty" ]; then
  git clone git@github.com:alacritty/alacritty.git "$TOOLS_HOME/alacritty"
fi

cd "$TOOLS_HOME/alacritty" || return
git pull
make binary
