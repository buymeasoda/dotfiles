set current_color NONE
set branch_symbol \uE0A0
set separator_symbol \uE0B0

function _prompt_color -a fg bg
  set_color $fg
  set_color -b $bg
end

function _prompt_icon -a fg bg content
  _prompt_color $fg $bg
  echo -ns " $content"
end

function _prompt_segment -a fg bg content
  if [ $current_color != NONE -a $bg != $current_color ]
    _prompt_color $current_color $bg
    echo -n $separator_symbol
  end
  set current_color $bg
  _prompt_color $fg $bg
  echo -ns " $content "
end

function _prompt_start
  echo -ens "\n"
end

function _prompt_end
  if [ -n $current_color ]
    set_color normal
    set_color $current_color
    echo -n "$separator_symbol "
  end
  set current_color NONE
  set_color white
  echo -ens "\n◼ "
  set_color normal
end

function _prompt_status
  if [ $RETVAL -ne 0 ] # error
    _prompt_icon red black "✕"
  end
  if [ (jobs -l | wc -l) -gt 0 ] # jobs
    _prompt_icon cyan black "⚙"
  end
  if [ (id -u $USER) -eq 0 ] # superuser
    _prompt_icon yellow black "∞"
  end
end

function _prompt_user_host
  _prompt_segment brblack black (whoami)@(prompt_hostname)
end

function _prompt_dir
  _prompt_segment black white (prompt_pwd)
end

function _prompt_git
  set -l branch_name (command git symbolic-ref HEAD 2> /dev/null)
  set -l branch_info
  if [ $status -eq 0 ]
    set branch_info (echo $branch_name | sed  "s-refs/heads/-$branch_symbol -")
  else
    set branch_info "➦ "(command git show-ref --head -s --abbrev | head -n1 2> /dev/null)
  end
  set -l dirty (_prompt_git_dirty)
  if [ "$dirty" != "" ]
    _prompt_segment black yellow "$branch_info $dirty"
  else
    _prompt_segment black green $branch_info
  end
end

function _prompt_git_dirty
  set -l is_dirty (command git status --porcelain --ignore-submodules=dirty 2> /dev/null)
  if [ -n "$is_dirty" ]
    echo -n "●"
  end
end

function _prompt_hg
  set -l branch_name (command hg id -b)
  set -l branch_info "$branch_symbol $branch_name"
  set -l dirty (_prompt_hg_dirty)
  if [ "$dirty" != "" ]
    _prompt_segment black yellow "$branch_info $dirty"
  else
    _prompt_segment black green $branch_info
  end
end

function _prompt_hg_dirty
  set -l is_dirty (command hg status | grep -e "^[A|M|R|!|?]" 2> /dev/null)
  if [ -n "$is_dirty" ]
    echo -n "●"
  end
end

function _prompt_vcs
  if type -q git; and command git rev-parse --is-inside-work-tree > /dev/null 2>&1
    _prompt_git
  else if test -n "$_scm_prompt"
    _prompt_segment black green "± "(bash -c "$_scm_prompt")
  else if type -q hg; and command hg id > /dev/null 2>&1
    _prompt_hg
  end
end

function fish_prompt
  set -g RETVAL $status
  _prompt_start
  _prompt_status
  _prompt_user_host
  _prompt_dir
  _prompt_vcs
  _prompt_end
end
