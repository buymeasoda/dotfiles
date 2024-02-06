#!/bin/bash

echo
echo "Linking home directory dot files"
echo

# Editor
ln -sf ~/.dotfiles/home/.editorconfig ~/.editorconfig
ln -sf ~/.dotfiles/home/.prettierrc ~/.prettierrc

# Git
ln -sf ~/.dotfiles/home/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/home/.gitignore ~/.gitignore

# Vim
ln -sf ~/.dotfiles/home/.vim ~/.vim
ln -sf ~/.dotfiles/home/.vimrc ~/.vimrc

# nvm
mkdir ~/.nvm
ln -sf $(brew --prefix nvm)/nvm.sh ~/.nvm
ln -sf $(brew --prefix nvm)/nvm-exec ~/.nvm
