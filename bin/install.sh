#!/usr/bin/env bash


#############################################
# Bin
#############################################


BINDIR=/usr/local/bin


if [ "$(uname)" == "Darwin" ]; then
  echo "MacOS"
elif [[ "$(uname -o)" == "Android" ]]; then
  echo "Android"
  BINDIR=$HOME/bin
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  echo "Linux"
  BINDIR=$HOME/bin
elif [ "$(expr substr $(uname -s) 1 5)" == "MINGW" ]; then
  echo "Windows"
  BINDIR=$HOME/bin
fi

echo "---- Installing to $BINDIR"


if [ ! -d "$BINDIR" ]; then
    mkdir -p $BINDIR
fi

rsync -av --progress . $BINDIR --exclude install.sh

chmod 755 $BINDIR/*
