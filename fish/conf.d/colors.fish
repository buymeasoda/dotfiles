# Fish
fish_config theme choose "Catppuccin Mocha"

# Man Pages
set -l end (printf "\e[0m")
set -x LESS_TERMCAP_mb (set_color red)
set -x LESS_TERMCAP_md (set_color -o blue)
set -x LESS_TERMCAP_me $end
set -x LESS_TERMCAP_so (set_color -u bryellow)
set -x LESS_TERMCAP_se $end
set -x LESS_TERMCAP_us (set_color -u magenta)
set -x LESS_TERMCAP_ue $end
set -x LESS '-R -s'
