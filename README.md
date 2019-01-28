# Buymeasoda Dotfiles

Buymeasoda dotfiles, terminal configuration and system setup.

## Features

- Homebrew formula and node packages
- Fish prompt with powerline theme

## Installation

- Install [homebrew](https://brew.sh/)
- Clone [dotfiles](https://github.com/buymeasoda/dotfiles)
- Run setup script

```sh
# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Clone dotfiles
git clone git@github.com:buymeasoda/dotfiles.git ~/.dotfiles

# Run setup
source ~/.dotfiles/setup/setup.sh
```

## Setup

### Shell

- Set default shell to [Fish](https://fishshell.com/)
- Symlink Fish dotfiles config `~/.dotfiles/fish` to `~/.config/fish`

### Terminal

- Install [iTerm](https://www.iterm2.com/) and configure settings folder to use `~/.dotfiles/prefs`

### Home Directory

- Symlink or manually copy `~/.dotfiles/home` files to home `~/` directory
