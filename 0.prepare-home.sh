#!/usr/bin/env bash
set -o errexit
set -o pipefail
set -o nounset

cd $HOME
mkdir -p development/libs
mkdir -p development/projects
mkdir -p tools

sudo rm /etc/fonts/conf.d/70-no-bitmaps.conf
fc-cache -f -v
