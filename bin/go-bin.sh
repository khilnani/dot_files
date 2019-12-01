#!/usr/bin/env bash

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

if [ ! -d "$BINDIR" ]; then
    mkdir -p $BINDIR
fi

export GOBIN=$BINDIR
echo "GOBIN: $GOBIN"
