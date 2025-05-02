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

cargo install sccache
cargo install exa
cargo install fd-find
cargo install ripgrep
cargo install dust

git clone git@github.com:streetturtle/awesome-wm-widgets.git
git clone git@github.com:deficient/battery-widget.git

ln -sf "$(pwd)/awesome" $HOME/.config/awesome
mkdir -p "$HOME/.local/share/awesome"
ln -sf "$HOME/.local/share/awesome/themes/negosaki/background.png" "$HOME/background"
ln -sf "$(pwd)/awesome/themes/" "$HOME/.local/share/awesome/themes"
ln -sf "$(pwd)/alacritty" $HOME/.config/alacritty
ln -sf "$(pwd)/neovim" $HOME/.config/nvim
ln -sf "$(pwd)/fish" $HOME/.config/fish
ln -sf "$(pwd)/tmux/.tmux.conf" $HOME/.tmux.conf
ln -sf "$(pwd)/starship.toml" $HOME/.config/starship.toml
