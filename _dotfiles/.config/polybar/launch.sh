#!/usr/bin/env bash

# Terminate already running bar instances
# killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit
polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybartop.log
polybar top >>/tmp/polybartop.log 2>&1 &

echo "Bars launched..."
