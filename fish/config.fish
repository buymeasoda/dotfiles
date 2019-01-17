# General
set -x EDITOR /usr/bin/vim
set -x VISUAL /usr/bin/vim
set -x LSCOLORS exfxcxdxbxegedabagacad

# Path
set -x PATH /usr/local/opt/mysql@5.7/bin $PATH

# Fish
set -g fish_greeting
set -g fish_key_bindings fish_default_key_bindings
set -g fish_prompt_pwd_dir_length 0
