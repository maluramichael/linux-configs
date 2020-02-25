#!/bin/bash

ips () { ip addr | grep "inet\b" | awk '{print $2}' | cut -d/ -f1 }
mcd () { [ ! -d "$1" ] && mkdir -p "$1" && cd "$1"; }
mans () { man $1 | grep -iC2 --color=always $2 | less }
dev () {
  [ ! -d ${DEV_HOME} ] && mkdir -p ${DEV_HOME}
  cd ${DEV_HOME}
  ls
}