#!/usr/bin/env bash

# List of required commands
REQUIRED_CMDS=(
  tar
  rsync
  curl
  chromium
  nmcli
  pavucontrol
  xrandr
  xinput
  xdg-open
  eza
  jq
  fd
  rg
  fzf
  bat
  dust
  yay
  qalc
  qalculate-gtk
  alacritty
  discord
  spotify
  signal-desktop
  vi
  nvim
)

# Function to check each command
check_command() {
  if ! command -v "$1" >/dev/null 2>&1; then
    echo "❌ Error: Required command '$1' is not installed or not in PATH."
    MISSING=true
  else
    echo "✅ Found: $1"
  fi
}

# Main loop
MISSING=false
for cmd in "${REQUIRED_CMDS[@]}"; do
  check_command "$cmd"
done

# Exit with error if anything is missing
if [ "$MISSING" = true ]; then
  echo "❗ One or more required commands are missing. Please install them and try again."
  exit 1
else
  echo "🎉 All required commands are available."
fi

