#!/usr/bin/env bash


#############################################
# Bin
#############################################


BINDIR=/usr/local/bin


if [ "$(uname)" == "Darwin" ]; then
  echo "MacOS"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  echo "Ubuntu"
elif [ "$(expr substr $(uname -s) 1 5)" == "MINGW" ]; then
  echo "Windows"
  BINDIR=$HOME/bin
fi

echo "Installing to $BINDIR"


if [ ! -d "$BINDIR" ]; then
    mkdir -p $BINDIR
fi

rsync -av --progress ./bin $BINDIR --exclude install.sh --exclude bin


#############################################
# This directory without ./bin
#############################################

rsync -av --progress . $HOME --exclude install.sh --exclude bin

cat >>~/.bashrc <<EOL
PROMPT_DIRTRIM=2
PS1='[\u@\h \W]\$ '

alias ls='ls --color'
LS_COLORS='ow=36;01:di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=36:*.rpm=90'
export LS_COLORS
EOL
source ~/.bashrc
