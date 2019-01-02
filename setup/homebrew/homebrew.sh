#!/bin/bash

# Install
if [[ $(command -v brew) == "" ]]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Formula
source core-formula.sh
