# Buymeasoda Dotfiles

Buymeasoda dotfiles and terminal configuration setup.

## Installation

- Git clone to `~/.dotfiles`

## Setup

### Homebrew

- Install homebrew and core formula

```
source ~/.dotfiles/setup/homebrew.sh
```

### Shell

- Set default shell to [Fish](https://fishshell.com/)
- Symlink Fish dotfiles config `~/.dotfiles/fish` to `~/.config/fish`

### Terminal

- Install [iTerm](https://www.iterm2.com/) and configure settings folder to use `~/.dotfiles/prefs`
- Add required [powerline fonts](https://github.com/powerline/fonts) to system via FontBook

### Home Directory

- Symlink or manually copy `~/.dotfiles/home` files to home `~/` directory
