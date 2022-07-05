function nvm --description 'Run bash nvm commands via fish shell'
  bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
