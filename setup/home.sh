#!/bin/bash

echo
echo "Linking home directory dot files"
echo

# Editor Config
ln -sf ~/.dotfiles/home/.editorconfig ~/.editorconfig

# Git
ln -sf ~/.dotfiles/home/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/home/.gitignore ~/.gitignore

# Mercurial
ln -sf ~/.dotfiles/home/.hgrc ~/.hgrc

# Vim
ln -sf ~/.dotfiles/home/.vim ~/.vim
ln -sf ~/.dotfiles/home/.vimrc ~/.vimrc
