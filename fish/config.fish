# General
set -x EDITOR /usr/bin/vim
set -x VISUAL /usr/bin/vim
set -x LSCOLORS exfxcxdxbxegedabagacad

# Homebrew
path /usr/local/sbin

# MySQL
path /usr/local/opt/mysql@5.7/bin

# Fish
set -g fish_greeting
set -g fish_key_bindings fish_default_key_bindings
set -g fish_prompt_pwd_dir_length 0

# Prompt
set -g fish_prompt_vcs_dirty_check true
