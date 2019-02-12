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

# Mercurial
ln -sf ~/.dotfiles/home/.hgrc ~/.hgrc

# Vim
ln -sf ~/.dotfiles/home/.vim ~/.vim
ln -sf ~/.dotfiles/home/.vimrc ~/.vimrc
