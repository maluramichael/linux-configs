#!/usr/bin/env bash

export PATH="$HOME/.local/bin:$PATH"
export _JAVA_AWT_WM_NONREPARENTING=1

echo "$(uname -a) $(uptime -p)"
df -hT -xtmpfs -xvfat -xdevtmpfs
ip addr | grep "inet\\b" | awk '{print $2}' | cut -d/ -f1
