#!/bin/bash

pidof dunst && killall dunst

dunst &
notify-send -u normal "message normal"
notify-send -u critical "message critical"
notify-send -u low "message low"
