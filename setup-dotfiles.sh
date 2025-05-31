#!/usr/bin/env bash
pushd awesome
git clone git@github.com:streetturtle/awesome-wm-widgets.git
git clone git@github.com:deficient/battery-widget.git
popd

sudo ln -sf "$(pwd)/awesome" $HOME/.config/awesome
sudo mkdir -p "$HOME/.local/share/awesome"
sudo ln -sf "$HOME/.local/share/awesome/themes/negosaki/background.png" "$HOME/background"
sudo ln -sf "$(pwd)/awesome/themes/" "$HOME/.local/share/awesome/themes"
sudo ln -sf "$(pwd)/alacritty" $HOME/.config/alacritty
sudo ln -sf "$(pwd)/neovim" $HOME/.config/nvim
sudo ln -sf "$(pwd)/fish" $HOME/.config/fish
sudo ln -sf "$(pwd)/tmux/.tmux.conf" $HOME/.tmux.conf
sudo ln -sf "$(pwd)/starship.toml" $HOME/.config/starship.toml

chsh -s "$(command -v fish)"
