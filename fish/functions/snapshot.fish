function snapshot --description 'Record all currently installed global packages for reference'
  set -l folder $HOME/.dotfiles/snapshot

  if not test -d "$folder"
    mkdir "$folder"
  end

  echo "Snapshot Homebrew formula"
  brew leaves > $folder/brew-list.txt

  echo "Snapshot Homebrew casks"
  brew cask list > $folder/cask-list.txt

  echo "Snapshot npm global packages"
  npm list -g --depth=0 > $folder/npm-list.txt

  echo "Snapshot Yarn global packages"
  yarn global list --depth=0 > $folder/yarn-list.txt

  echo "Done"
end
