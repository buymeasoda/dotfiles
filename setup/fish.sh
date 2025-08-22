#!/bin/bash

echo
echo "Setting fish as default shell"
echo

# Validate
if [[ ! -f $(brew --prefix)/bin/fish ]]; then
  echo "fish is not available, please install via homebrew"
  return
fi

# Setup
sudo sh -c "echo $(brew --prefix)/bin/fish >> /etc/shells"
chsh -s $(brew --prefix)/bin/fish

# Config
mkdir ~/.config
ln -sf ~/.dotfiles/fish ~/.config/fish
ln -sf ~/.dotfiles/terminal/starship.toml ~/.config/starship.toml
