#!/usr/bin/env sh

apt-get install -y zsh git-core vim 

curl -L http://install.ohmyz.sh | sh
sed -ie 's/robbyrussell/avit/g' ~/.zshrc

curl https://raw.githubusercontent.com/khilnani/dot_files/master/vi/vimrc_safe -o ~/.vimrc

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash

if grep -q "NVM_DIR" ~/.zshrc; then
    echo "nvm already in ~/.zshrc"
else
    echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
    echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm' >> ~/.zshrc
fi

echo 'export PS1="\t \u@\W \\$ "' >> ~/.bashrc
