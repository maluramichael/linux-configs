#!/usr/bin/env bash

addToPATH "$HOME/.local/bin"

# fix java rendering issues with bspwm
export _JAVA_AWT_WM_NONREPARENTING=1

# fix 4k rendering issues
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export QT_SCREEN_SCALE_FACTORS=1

echo "$(uname -a) $(uptime -p)"
df -hT -xtmpfs -xvfat -xdevtmpfs
ip addr | grep "inet\\b" | awk '{print $2}' | cut -d/ -f1
