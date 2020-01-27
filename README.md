# linux-configs
My ~ configurations for linux

# Getting started

First install all packages.
```sh
cd ~
mkdir -p development
cd development
git clone git@github.com:maluramichael/linux-configs.git dot-files
cd dot-files
./install-packages.sh
```

Then link configurations in to your home directory.
```sh
./link.sh
```

Done
