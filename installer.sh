#!/bin/bash

set -e

# checking for yay
echo "checking if yay is installed"
if ! command -v yay &> /dev/null; then
    echo "yay is not installed, installing it..."
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    cd ..
fi
echo "yay is installed"

# install niri and noctalia-shell
echo "installing niri and noctalia-shell"
yay -S --needed --noconfirm niri noctalia-shell

# clone repo if it doesn't exist
if [ ! -d "niridotfiles-noctalia" ]; then
    git clone https://github.com/taktojakuba/niridotfiles-noctalia.git
fi

# cd into repo
cd niridotfiles-noctalia

# make niri directory if doesn't exist
echo "creating directory ~/.config/niri if it doesn't exist"
mkdir -p ~/.config/niri

# copy config
echo "copying config.kdl from repo folder"
cp config.kdl ~/.config/niri/

echo "all done"
