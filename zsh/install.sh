#!/usr/bin/env bash

if [ "$(uname)" == "Darwin" ]; then
  echo "MacOS"
  ./_zsh-osx.sh
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  echo "Ubuntu"
  ./_zsh-ubuntu.sh
elif [ "$(expr substr $(uname -s) 1 5)" == "MINGW" ]; then
  echo "Windows"
fi
./_config.sh
./_ohmyzsh.sh

# ./_pure-prompt.sh
# Replace default theme
sed -ie 's/robbyrussell/avit/g' ~/.zshrc
