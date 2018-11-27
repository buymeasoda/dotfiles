
# Configuration

export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

# ZSH Overrides

# Translate carriage return to newline
stty icrnl

# Disable substituing environment variable names in prompt paths
unsetopt auto_name_dirs

# Prompt setting required for mercurial status
setopt PROMPT_SUBST
