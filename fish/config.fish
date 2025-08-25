# Fish
set -g fish_greeting
set -g fish_key_bindings fish_default_key_bindings
set -g fish_prompt_pwd_dir_length 0

# Editor
set -x VISUAL /usr/bin/nano
set -x EDITOR /usr/bin/nano
set -x REACT_EDITOR code

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# OrbStack
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

# Starship
if test $TERM_PROGRAM = "Apple_Terminal"
  set -gx STARSHIP_CONFIG ~/.dotfiles/terminal/starship-terminal.toml
end
starship init fish | source
