#!/usr/bin/env bash
set -euo pipefail

install_if_missing() {
  local cmd=$1
  local crate=${2:-$cmd}
  if ! command -v "$cmd" &>/dev/null; then
    echo "📦 Installing $crate via cargo..."
    cargo install "$crate"
  else
    echo "✅ $cmd already installed."
  fi
}

install_if_missing sccache
install_if_missing eza
install_if_missing fd-find
install_if_missing ripgrep
install_if_missing du-dust
