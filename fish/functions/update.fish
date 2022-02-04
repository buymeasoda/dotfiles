function update --description 'Update installed global packages and shell helpers'
  _header "Updating Homebrew"
  brew update
  brew upgrade
  brew cleanup

  _message "Checking npm"
  if test (npm outdated -g npm | wc -l) -ne 0
    _header "Updating npm"
    npm install -g npm
  end

  _header "Updating npm global packages"
  npm update -g

  _header "Updating Yarn global packages"
  yarn global upgrade

  _header "Recording packages snapshot"
  snapshot

  _header "Reloading Fish Shell"
  exec $SHELL

  _header "Updating fish completions"
  fish_update_completions
end

function _header -a heading
  set_color yellow
  echo "----------------------------------------"
  echo " 🚀 $heading"
  echo "----------------------------------------"
  set_color normal
end

function _message -a message
  set_color purple
  echo
  echo " 🔍 $message"
  set_color normal
end
