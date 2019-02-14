function update --description 'Update installed global packages and shell helpers'
  echo "Updating Homebrew"
  brew update
  brew upgrade
  brew cleanup

  if test (npm outdated -g npm | wc -l) -ne 0
    echo "Updating npm"
    npm install -g npm
  end

  echo "Updating npm global packages"
  npm update -g

  echo "Updating Yarn global packages"
  yarn global upgrade

  echo "Updating fish completions"
  fish_update_completions

  echo "Recording packages snapshot"
  snapshot
end
