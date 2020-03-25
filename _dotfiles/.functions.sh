#!/bin/bash

ips() {
  ip addr | grep "inet\\b" | awk '{print $2}' | cut -d/ -f1
}

mcd() {
  [ ! -d "$1" ] && mkdir -p "$1" && cd "$1" || exit
}

mans() {
  man "$1" | grep -iC2 --color=always "$2" | less
}

dev() {
  [ ! -d "$DEV_HOME" ] && mkdir -p "$DEV_HOME"
  cd "$DEV_HOME" || exit
  ls
}

printcolors() {
  for x in {0..8}; do for i in {30..37}; do
    for a in {40..47}; do echo -ne "\e[$x;$i;$a""m\\\e[$x;$i;$a""m\e[0;37;40m "; done
    echo
  done; done
  echo ""
}
