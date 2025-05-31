#!/usr/bin/env bash

pacman -S yay --noconfirm
pacman -S gcc --noconfirm
pacman -S git --noconfirm
pacman -S make --noconfirm
pacman -S cmake --noconfirm
pacman -S base-devel ninja curl --noconfirm
pacman -S pkg-config --noconfirm
pacman -S awesome --noconfirm
pacman -S fish --noconfirm
pacman -S tmux --noconfirm
pacman -S starship thefuck --noconfirm
pacman -S fzf --noconfirm
pacman -S vim alacritty --no-confirm
pacman -S xorg-xinput xorg-xrandr xorg-xmodmap clipmenu --noconfirm
pacamn -S sxiv --noconfirm
yay -S light --noconfirm

# install rustup
set -euo pipefail
if ! command -v rustup &> /dev/null; then
    echo "Installing rustup..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
else
    echo "rustup is already installed."
fi
export PATH="$HOME/.cargo/bin:$PATH"


