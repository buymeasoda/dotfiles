#!/bin/bash

echo
echo "Linking home directory dot files"
echo

# Git
ln -sf ~/.dotfiles/home/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/home/.gitignore ~/.gitignore

# Mercurial
ln -sf ~/.dotfiles/home/.hgrc ~/.hgrc

# Vim
ln -sf ~/.dotfiles/home/.vim ~/.vim
ln -sf ~/.dotfiles/home/.vimrc ~/.vimrc
