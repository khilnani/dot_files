#!/usr/bin/env sh
apt-get install -y zsh git-core
curl -L http://install.ohmyz.sh | sh
sed -ie 's/robbyrussell/avit/g' ~/.zshrc
