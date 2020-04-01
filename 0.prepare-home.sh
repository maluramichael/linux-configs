#!/usr/bin/env bash
set -o errexit
set -o pipefail
set -o nounset

# Create essential directories
cd $HOME
mkdir -p development/libs
mkdir -p development/projects
mkdir -p tools

# Fonts
sudo rm /etc/fonts/conf.d/70-no-bitmaps.conf
fc-cache -f -v

# Default applications
xdg-mime default nemo.desktop inode/directory
