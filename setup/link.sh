#!/bin/bash

echo
echo "Linking dotfiles, settings and preferences"
echo

# Fish
ln -sf ~/.dotfiles/fish ~/.config/fish

# Git
ln -sf ~/.dotfiles/home/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/home/.gitignore ~/.gitignore

# Mercurial
ln -sf ~/.dotfiles/home/.hgrc ~/.hgrc

# Vim
ln -sf ~/.dotfiles/home/.vim ~/.vim
ln -sf ~/.dotfiles/home/.vimrc ~/.vimrc

# VS Code
ln -sf ~/.dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -sf ~/.dotfiles/vscode/snippets/ ~/Library/Application\ Support/Code/User/snippets
ln -sf ~/.dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

# iTerm
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/.dotfiles/iterm"
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
