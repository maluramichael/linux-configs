#!/bin/sh

sudo apt install linux-headers-$(uname -r)
sudo apt install $(cat apt.packages.list)
