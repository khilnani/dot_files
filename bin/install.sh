#!/usr/bin/env bash


#############################################
# Bin
#############################################

os=undefined
BINDIR=/usr/local/bin


if [ "$(uname)" == "Darwin" ]; then
  os="MacOS"
elif [[ "$(uname -o)" == "Android" ]]; then
  os="Android"
  BINDIR=$HOME/bin
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  os="Linux"
  BINDIR=$HOME/bin
elif [ "$(expr substr $(uname -s) 1 5)" == "MINGW" ]; then
  os="Windows"
  BINDIR=$HOME/bin
fi

echo ""
echo "OS: $os"
echo "Installing to $BINDIR"


if [ ! -d "$BINDIR" ]; then
    mkdir -p $BINDIR
fi

rsync -av --progress . $BINDIR --exclude install.sh

chmod 755 $BINDIR/*

# export PATH=~/bin:${PATH}


