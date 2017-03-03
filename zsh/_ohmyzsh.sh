#!/bin/sh

#sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -L http://install.ohmyz.sh | sh

git clone https://github.com/powerline/fonts.git

cd fonts/

sh install.sh


