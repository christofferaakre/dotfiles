#!/usr/bin/env bash
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
