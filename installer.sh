#!/bin/bash

set -e

#checking for yay
echo "checking if yay is installed "
if ! command -v yay &> /dev/null; then
    echo "yay is not installed installing it...."
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    cd
fi
#niri and noctalia installation
echo "installing niri and noctalia"
yay -S --needed --noconfirm niri noctalia-shell
#cd into repo 
cd niridotfiles-noctalia
#making niri direcotry
echo "creating directory ~/.config/niri if doesnt exist"
mkdir -p ~/.config/niri
#coping config from repo to niri
echo "copying config.kdl from repo folder"
cp config.kdl ~/.config/niri/
echo "all done"
