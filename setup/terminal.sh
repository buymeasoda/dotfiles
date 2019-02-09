#!/bin/bash

echo
echo "Configuring terminal preferences"
echo

# Message
ln -sf ~/.dotfiles/home/.hushlogin ~/.hushlogin

# iTerm
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/.dotfiles/iterm"
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
