#!/bin/bash
set -e

echo "[INFO] checking yay"
if ! command -v yay &>/dev/null; then
    echo "[INFO] yay missing, bootstrapping"
    sudo pacman -S --needed --noconfirm git base-devel
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd ..
    rm -rf yay
fi

echo "[INFO] installing packages"
yay -S --needed --noconfirm \
    niri noctalia-shell rofi cava foot kew

if [ ! -d "niridotfiles-noctalia" ]; then
    git clone https://github.com/taktojakuba/niridotfiles-noctalia.git
fi

cd niridotfiles-noctalia

echo "[INFO] noctalia setup"
mkdir -p ~/.config/noctalia
cp -r templates ~/.config/noctalia/
cp user-templates.toml ~/.config/noctalia/
cp -r colorschemes ~/.config/noctalia/

echo "[INFO] niri setup"
mkdir -p ~/.config/niri
cp config.kdl ~/.config/niri/

echo "[INFO] dotfiles"
cp -r fastfetch ~/.config/
cp -r foot ~/.config/
mkdir -p ~/.config/rofi
cp -r rofi/* ~/.config/rofi/

echo "[DONE] restart session"
