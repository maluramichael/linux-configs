#!/usr/bin/env bash

echo "$(uname -a) $(uptime -p)"
df -hT -xtmpfs -xvfat -xdevtmpfs
ip addr | grep "inet\\b" | awk '{print $2}' | cut -d/ -f1
