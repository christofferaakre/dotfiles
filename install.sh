#!/usr/bin/env bash

cargo install sccache
cargo install exa
cargo install fd-find
cargo install ripgrep
cargo install dust

git clone git@github.com:streetturtle/awesome-wm-widgets.git
git clone git@github.com:deficient/battery-widget.git

# clone and build neovim stable
sudo pacman -S base-devel cmake ninja curl
git clone https://github.com/neovim/neovim
pushd neovim
git checkout stable
make CMAKE_BUILD_TYPE=Release -j$(nproc)
sudo make install

# fail if neovim is not installed
if ! command -v nvim &> /dev/null; then
    echo "Neovim installation failed."
    exit 1
fi


ln -sf "$(pwd)/awesome" $HOME/.config/awesome
mkdir -p "$HOME/.local/share/awesome"
ln -sf "$HOME/.local/share/awesome/themes/negosaki/background.png" "$HOME/background"
ln -sf "$(pwd)/awesome/themes/" "$HOME/.local/share/awesome/themes"
ln -sf "$(pwd)/alacritty" $HOME/.config/alacritty
ln -sf "$(pwd)/neovim" $HOME/.config/nvim
ln -sf "$(pwd)/fish" $HOME/.config/fish
ln -sf "$(pwd)/tmux/.tmux.conf" $HOME/.tmux.conf
ln -sf "$(pwd)/starship.toml" $HOME/.config/starship.toml
