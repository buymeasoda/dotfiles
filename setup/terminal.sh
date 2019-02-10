#!/bin/bash

echo
echo "Configuring terminal preferences"
echo

# Message
ln -sf ~/.dotfiles/home/.hushlogin ~/.hushlogin

# iTerm
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/.dotfiles/terminal"
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

# Terminal
open ~/.dotfiles/terminal/Soda.terminal
sleep 1
defaults write com.apple.Terminal "Default Window Settings" -string "Soda"
defaults write com.apple.Terminal "Startup Window Settings" -string "Soda"
