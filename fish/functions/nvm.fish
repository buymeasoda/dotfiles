function nvm --description 'Run bash nvm commands via fish shell'
  bass source /usr/local/opt/nvm/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
