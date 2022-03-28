# Fish
set -g fish_color_autosuggestion black
set -g fish_color_cancel normal
set -g fish_color_command brblack
set -g fish_color_comment brblack
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_end brblack
set -g fish_color_error red
set -g fish_color_escape cyan
set -g fish_color_history_current normal
set -g fish_color_host normal
set -g fish_color_host_remote yellow
set -g fish_color_match normal
set -g fish_color_normal normal
set -g fish_color_operator cyan
set -g fish_color_param blue
set -g fish_color_quote blue
set -g fish_color_redirection magenta
set -g fish_color_search_match yellow
set -g fish_color_selection white
set -g fish_color_status red
set -g fish_color_user brgreen
set -g fish_color_valid_path normal
set -g fish_pager_color_completion normal
set -g fish_pager_color_description yellow
set -g fish_pager_color_prefix normal
set -g fish_pager_color_progress brwhite
set -g fish_pager_color_selected_completion white
set -g fish_pager_color_selected_description bryellow
set -g fish_pager_color_selected_prefix white
set -g fish_pager_color_selected_progress brwhite --background black
set -g fish_pager_color_selected_background --background black

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
