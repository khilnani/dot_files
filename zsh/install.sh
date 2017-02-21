#!/usr/bin/env bash

if [ "$(uname)" == "Darwin" ]; then
  echo "MacOS"
  ./_zsh-osx.sh
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  echo "Ubuntu"
  ./_zsh-ubuntu.sh
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
  echo "Windows"
fi
./_config.sh
./_ohmyzsh.sh

# Replace default theme
sed -ie 's/robbyrussell/avit/g' ~/.zshrc

wget https://raw.githubusercontent.com/sindresorhus/pure/master/pure.zsh
wget https://raw.githubusercontent.com/sindresorhus/pure/master/async.zsh

mv pure.zsh /usr/local/share/zsh/site-functions/prompt_pure_setup
mv async.zsh /usr/local/share/zsh/site-functions/async

echo "ZSH_THEME="pure" >> ~/.zshrc
echo "autoload -U promptinit; promptinit" >> ~/.zshrc
echo "prompt pure" >> ~/.zshrc
