#!/usr/bin/env sh
apt-get install -y zsh git-core vim
curl -L http://install.ohmyz.sh | sh
sed -ie 's/robbyrussell/avit/g' ~/.zshrc
curl https://raw.githubusercontent.com/khilnani/dot_files/master/vi/vimrc_safe -o ~/.vimrc
