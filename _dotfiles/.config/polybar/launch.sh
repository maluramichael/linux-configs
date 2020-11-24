#!/usr/bin/env bash

## Add this to your wm startup file.

# Terminate already running bar instances
polybar-msg cmd quit

# Wait until the processes have been shut down
while pgrep -u "$UID" -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar -c ~/.config/polybar/config.ini main &
