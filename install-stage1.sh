#!/usr/bin/env bash
set -euo pipefail

sudo pacman -S --noconfirm \
  yay gcc git make cmake base-devel ninja curl pkg-config \
  awesome fish tmux starship thefuck fzf vim alacritty \
  xorg-xinput xorg-xrandr xorg-xmodmap clipmenu sxiv

if ! command -v yay &>/dev/null; then
  sudo pacman -S --noconfirm yay
else
  echo "yay already installed."
fi

# install rustup
if ! command -v rustup &> /dev/null; then
    echo "Installing rustup..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
else
    echo "rustup is already installed."
fi
source "$HOME/.cargo/env"

echo "Installing nightly Rust toolchain and setting it as default..."
rustup install nightly
rustup default nightly

if ! command -v nvim &>/dev/null; then
  (
    git clone https://github.com/neovim/neovim
    pushd neovim
    git checkout stable
    make CMAKE_BUILD_TYPE=Release -j"$(nproc)"
    sudo make install
    popd
  )
fi

# fail if neovim is not installed
if ! command -v nvim &> /dev/null; then
    echo "Neovim installation failed."
    exit 1
fi
