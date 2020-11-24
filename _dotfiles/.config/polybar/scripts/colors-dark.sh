#!/bin/bash

## Author : Aditya Shakya
## Github : adi1090x

PDIR="$HOME/.config/polybar"
BSPWMRC="$HOME/.config/bspwm/bspwmrc"
LAUNCH="polybar-msg cmd restart; bspc wm -r"

if [[ $1 = "-amber" ]]; then
  # Replacing colors
  sed -i --follow-symlinks -e 's/bg = .*/bg = #252525/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/fg = .*/fg = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/ac = .*/ac = #ffb300/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bi = .*/bi = #ffb300/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/be = .*/be = #ffb300/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/mf = .*/mf = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bspc config focused_border_color ".*"/bspc config focused_border_color "#ffb300"/g' $BSPWMRC
  sed -i --follow-symlinks -e 's/bspc config normal_border_color ".*"/bspc config normal_border_color "#000000"/g' $BSPWMRC
  # Restarting polybar
  $LAUNCH &
  bspc wm -r

elif [[ $1 = "-blue" ]]; then
  # Replacing colors
  sed -i --follow-symlinks -e 's/bg = .*/bg = #252525/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/fg = .*/fg = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/ac = .*/ac = #1e88e5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bi = .*/bi = #1e88e5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/be = .*/be = #1e88e5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/mf = .*/mf = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bspc config focused_border_color ".*"/bspc config focused_border_color "#1e88e5"/g' $BSPWMRC
  sed -i --follow-symlinks -e 's/bspc config normal_border_color ".*"/bspc config normal_border_color "#000000"/g' $BSPWMRC
  # Restarting polybar
  $LAUNCH &
  bspc wm -r

elif [[ $1 = "-blue-grey" ]]; then
  # Replacing colors
  sed -i --follow-symlinks -e 's/bg = .*/bg = #252525/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/fg = .*/fg = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/ac = .*/ac = #546e7a/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bi = .*/bi = #546e7a/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/be = .*/be = #546e7a/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/mf = .*/mf = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bspc config focused_border_color ".*"/bspc config focused_border_color "#546e7a"/g' $BSPWMRC
  sed -i --follow-symlinks -e 's/bspc config normal_border_color ".*"/bspc config normal_border_color "#000000"/g' $BSPWMRC
  # Restarting polybar
  $LAUNCH &
  bspc wm -r

elif [[ $1 = "-brown" ]]; then
  # Replacing colors
  sed -i --follow-symlinks -e 's/bg = .*/bg = #252525/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/fg = .*/fg = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/ac = .*/ac = #6d4c41/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bi = .*/bi = #6d4c41/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/be = .*/be = #6d4c41/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/mf = .*/mf = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bspc config focused_border_color ".*"/bspc config focused_border_color "#6d4c41"/g' $BSPWMRC
  sed -i --follow-symlinks -e 's/bspc config normal_border_color ".*"/bspc config normal_border_color "#000000"/g' $BSPWMRC
  # Restarting polybar
  $LAUNCH &
  bspc wm -r

elif [[ $1 = "-cyan" ]]; then
  # Replacing colors
  sed -i --follow-symlinks -e 's/bg = .*/bg = #252525/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/fg = .*/fg = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/ac = .*/ac = #00acc1/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bi = .*/bi = #00acc1/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/be = .*/be = #00acc1/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/mf = .*/mf = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bspc config focused_border_color ".*"/bspc config focused_border_color "#00acc1"/g' $BSPWMRC
  sed -i --follow-symlinks -e 's/bspc config normal_border_color ".*"/bspc config normal_border_color "#000000"/g' $BSPWMRC
  # Restarting polybar
  $LAUNCH &
  bspc wm -r

elif [[ $1 = "-deep-orange" ]]; then
  # Replacing colors
  sed -i --follow-symlinks -e 's/bg = .*/bg = #252525/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/fg = .*/fg = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/ac = .*/ac = #f4511e/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bi = .*/bi = #f4511e/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/be = .*/be = #f4511e/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/mf = .*/mf = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bspc config focused_border_color ".*"/bspc config focused_border_color "#f4511e"/g' $BSPWMRC
  sed -i --follow-symlinks -e 's/bspc config normal_border_color ".*"/bspc config normal_border_color "#000000"/g' $BSPWMRC
  # Restarting polybar
  $LAUNCH &
  bspc wm -r

elif [[ $1 = "-deep-purple" ]]; then
  # Replacing colors
  sed -i --follow-symlinks -e 's/bg = .*/bg = #252525/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/fg = .*/fg = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/ac = .*/ac = #5e35b1/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bi = .*/bi = #5e35b1/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/be = .*/be = #5e35b1/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/mf = .*/mf = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bspc config focused_border_color ".*"/bspc config focused_border_color "#5e35b1"/g' $BSPWMRC
  sed -i --follow-symlinks -e 's/bspc config normal_border_color ".*"/bspc config normal_border_color "#000000"/g' $BSPWMRC
  # Restarting polybar
  $LAUNCH &
  bspc wm -r

elif [[ $1 = "-green" ]]; then
  # Replacing colors
  sed -i --follow-symlinks -e 's/bg = .*/bg = #252525/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/fg = .*/fg = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/ac = .*/ac = #43a047/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bi = .*/bi = #43a047/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/be = .*/be = #43a047/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/mf = .*/mf = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bspc config focused_border_color ".*"/bspc config focused_border_color "#43a047"/g' $BSPWMRC
  sed -i --follow-symlinks -e 's/bspc config normal_border_color ".*"/bspc config normal_border_color "#000000"/g' $BSPWMRC
  # Restarting polybar
  $LAUNCH &
  bspc wm -r

elif [[ $1 = "-grey" ]]; then
  # Replacing colors
  sed -i --follow-symlinks -e 's/bg = .*/bg = #252525/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/fg = .*/fg = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/ac = .*/ac = #757575/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bi = .*/bi = #757575/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/be = .*/be = #757575/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/mf = .*/mf = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bspc config focused_border_color ".*"/bspc config focused_border_color "#757575"/g' $BSPWMRC
  sed -i --follow-symlinks -e 's/bspc config normal_border_color ".*"/bspc config normal_border_color "#000000"/g' $BSPWMRC
  # Restarting polybar
  $LAUNCH &
  bspc wm -r

elif [[ $1 = "-indigo" ]]; then
  # Replacing colors
  sed -i --follow-symlinks -e 's/bg = .*/bg = #252525/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/fg = .*/fg = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/ac = .*/ac = #3949ab/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bi = .*/bi = #3949ab/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/be = .*/be = #3949ab/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/mf = .*/mf = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bspc config focused_border_color ".*"/bspc config focused_border_color "#3949ab"/g' $BSPWMRC
  sed -i --follow-symlinks -e 's/bspc config normal_border_color ".*"/bspc config normal_border_color "#000000"/g' $BSPWMRC
  # Restarting polybar
  $LAUNCH &
  bspc wm -r

elif [[ $1 = "-light-blue" ]]; then
  # Replacing colors
  sed -i --follow-symlinks -e 's/bg = .*/bg = #252525/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/fg = .*/fg = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/ac = .*/ac = #039be5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bi = .*/bi = #039be5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/be = .*/be = #039be5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/mf = .*/mf = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bspc config focused_border_color ".*"/bspc config focused_border_color "#039be5"/g' $BSPWMRC
  sed -i --follow-symlinks -e 's/bspc config normal_border_color ".*"/bspc config normal_border_color "#000000"/g' $BSPWMRC
  # Restarting polybar
  $LAUNCH &
  bspc wm -r

elif [[ $1 = "-light-green" ]]; then
  # Replacing colors
  sed -i --follow-symlinks -e 's/bg = .*/bg = #252525/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/fg = .*/fg = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/ac = .*/ac = #7cb342/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bi = .*/bi = #7cb342/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/be = .*/be = #7cb342/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/mf = .*/mf = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bspc config focused_border_color ".*"/bspc config focused_border_color "#7cb342"/g' $BSPWMRC
  sed -i --follow-symlinks -e 's/bspc config normal_border_color ".*"/bspc config normal_border_color "#000000"/g' $BSPWMRC
  # Restarting polybar
  $LAUNCH &
  bspc wm -r

elif [[ $1 = "-lime" ]]; then
  # Replacing colors
  sed -i --follow-symlinks -e 's/bg = .*/bg = #252525/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/fg = .*/fg = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/ac = .*/ac = #c0ca33/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bi = .*/bi = #c0ca33/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/be = .*/be = #c0ca33/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/mf = .*/mf = #252525/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bspc config focused_border_color ".*"/bspc config focused_border_color "#c0ca33"/g' $BSPWMRC
  sed -i --follow-symlinks -e 's/bspc config normal_border_color ".*"/bspc config normal_border_color "#000000"/g' $BSPWMRC
  # Restarting polybar
  $LAUNCH &
  bspc wm -r

elif [[ $1 = "-orange" ]]; then
  # Replacing colors
  sed -i --follow-symlinks -e 's/bg = .*/bg = #252525/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/fg = .*/fg = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/ac = .*/ac = #fb8c00/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bi = .*/bi = #fb8c00/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/be = .*/be = #fb8c00/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/mf = .*/mf = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bspc config focused_border_color ".*"/bspc config focused_border_color "#fb8c00"/g' $BSPWMRC
  sed -i --follow-symlinks -e 's/bspc config normal_border_color ".*"/bspc config normal_border_color "#000000"/g' $BSPWMRC
  # Restarting polybar
  $LAUNCH &
  bspc wm -r

elif [[ $1 = "-pink" ]]; then
  # Replacing colors
  sed -i --follow-symlinks -e 's/bg = .*/bg = #252525/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/fg = .*/fg = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/ac = .*/ac = #d81b60/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bi = .*/bi = #d81b60/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/be = .*/be = #d81b60/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/mf = .*/mf = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bspc config focused_border_color ".*"/bspc config focused_border_color "#d81b60"/g' $BSPWMRC
  sed -i --follow-symlinks -e 's/bspc config normal_border_color ".*"/bspc config normal_border_color "#000000"/g' $BSPWMRC
  # Restarting polybar
  $LAUNCH &
  bspc wm -r

elif [[ $1 = "-purple" ]]; then
  # Replacing colors
  sed -i --follow-symlinks -e 's/bg = .*/bg = #252525/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/fg = .*/fg = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/ac = .*/ac = #8e24aa/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bi = .*/bi = #8e24aa/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/be = .*/be = #8e24aa/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/mf = .*/mf = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bspc config focused_border_color ".*"/bspc config focused_border_color "#8e24aa"/g' $BSPWMRC
  sed -i --follow-symlinks -e 's/bspc config normal_border_color ".*"/bspc config normal_border_color "#000000"/g' $BSPWMRC
  # Restarting polybar
  $LAUNCH &
  bspc wm -r

elif [[ $1 = "-red" ]]; then
  # Replacing colors
  sed -i --follow-symlinks -e 's/bg = .*/bg = #252525/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/fg = .*/fg = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/ac = .*/ac = #e53935/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bi = .*/bi = #e53935/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/be = .*/be = #e53935/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/mf = .*/mf = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bspc config focused_border_color ".*"/bspc config focused_border_color "#e53935"/g' $BSPWMRC
  sed -i --follow-symlinks -e 's/bspc config normal_border_color ".*"/bspc config normal_border_color "#000000"/g' $BSPWMRC
  # Restarting polybar
  $LAUNCH &
  bspc wm -r

elif [[ $1 = "-teal" ]]; then
  # Replacing colors
  sed -i --follow-symlinks -e 's/bg = .*/bg = #252525/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/fg = .*/fg = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/ac = .*/ac = #00897b/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bi = .*/bi = #00897b/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/be = .*/be = #00897b/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/mf = .*/mf = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bspc config focused_border_color ".*"/bspc config focused_border_color "#00897b"/g' $BSPWMRC
  sed -i --follow-symlinks -e 's/bspc config normal_border_color ".*"/bspc config normal_border_color "#000000"/g' $BSPWMRC
  # Restarting polybar
  $LAUNCH &
  bspc wm -r

elif [[ $1 = "-yellow" ]]; then
  # Replacing colors
  sed -i --follow-symlinks -e 's/bg = .*/bg = #252525/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/fg = .*/fg = #f5f5f5/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/ac = .*/ac = #fdd835/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bi = .*/bi = #fdd835/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/be = .*/be = #fdd835/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/mf = .*/mf = #252525/g' $PDIR/colors.ini
  sed -i --follow-symlinks -e 's/bspc config focused_border_color ".*"/bspc config focused_border_color "#fdd835"/g' $BSPWMRC
  sed -i --follow-symlinks -e 's/bspc config normal_border_color ".*"/bspc config normal_border_color "#000000"/g' $BSPWMRC
  # Restarting polybar
  $LAUNCH &
  bspc wm -r

else
  echo "Available options:
-amber		-blue			-blue-grey		-brown
-cyan		-deep-orange		-deep-purple		-green
-grey		-indigo			-light-blue		-light-green
-lime		-orange			-pink			-purple
-red		-teal			-yellow"
fi
