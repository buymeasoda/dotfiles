# Buymeasoda Dotfiles

[Buymeasoda](http://www.buymeasoda.com/) dotfiles, terminal configuration and system setup.

## Overview

- Homebrew formula, app casks and global node packages
- Mac apps and system preferences configuration
- Fish dotfiles, Starship prompt and iTerm configuration
- VS Code editor settings and extensions installation

## Installation

- Install [homebrew](https://brew.sh/)
- Clone [dotfiles](https://github.com/buymeasoda/dotfiles)
- Run setup script

```sh
# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Clone dotfiles
git clone git@github.com:buymeasoda/dotfiles.git ~/.dotfiles

# Run setup
cd ~/.dotfiles/setup && source install.sh
```

## Features

The setup script will automatically install and configure the following:

- Command line tools
- macOS applications
- macOS system preferences
- Fish shell
- iTerm and Terminal preferences
- VS Code settings and extensions
- Dotfiles configuration
- Terminal configuration
- Global node modules
