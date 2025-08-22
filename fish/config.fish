# Fish
set -g fish_greeting
set -g fish_key_bindings fish_default_key_bindings
set -g fish_prompt_pwd_dir_length 0

# Prompt
set -g fish_prompt_vcs_dirty_check true

# Color
set -x LSCOLORS exfxcxdxbxegedabagacad

# Editor
set -x VISUAL /usr/bin/nano
set -x EDITOR /usr/bin/nano
set -x REACT_EDITOR code

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# OrbStack
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

# Starship
starship init fish | source
