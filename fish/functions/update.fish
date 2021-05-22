function update --description 'Update installed global packages and shell helpers'
  echo "Updating Homebrew"
  brew update
  brew upgrade
  brew cleanup

  echo "Checking npm"
  if test (npm outdated -g npm | wc -l) -ne 0
    echo "Updating npm"
    npm install -g npm
  end

  echo "Updating npm global packages"
  npm update -g

  echo "Updating Yarn global packages"
  yarn global upgrade

  echo "Recording packages snapshot"
  snapshot

  echo "Reloading Fish Shell"
  exec $SHELL

  echo "Updating fish completions"
  fish_update_completions
end
