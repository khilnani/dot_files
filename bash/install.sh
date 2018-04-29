#!/bin/sh

rsync -av --progress .dircolors $HOME

cat >>~/.bashrc <<EOL
PROMPT_DIRTRIM=2
PS1='[\u@\h \W]\$ '

alias ls='ls --color'
LS_COLORS='ow=36;01:di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=36:*.rpm=90'
export LS_COLORS
EOL
source ~/.bashrc
