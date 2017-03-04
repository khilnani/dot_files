#!/usr/bin/env sh
apt-get install -y zsh git-core vim
curl -L http://install.ohmyz.sh | sh
sed -ie 's/robbyrussell/avit/g' ~/.zshrc
