#!/usr/bin/env bash

# go tool dist list
# https://godoc.org/github.com/golang/go/src/cmd/dist

BIN=/usr/local/bin
OS=darwin
ARCH=amd64



if [ "$(uname)" == "Darwin" ]; then
  OS="darwin"
  ARCH="amd64"
  BIN=/usr/local/bin
elif [[ "$(uname -o)" == "Android" ]]; then
  OS="android"
  ARCH="arm"
  BIN=$HOME/bin
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  OS="linux"
  ARCH="amd64"
  BIN=$HOME/bin
elif [ "$(expr substr $(uname -s) 1 5)" == "MINGW" ]; then
  OS="windows"
  ARCH="386"
  BIN=$HOME/bin
fi

if [ ! -d "$BIN" ]; then
    mkdir -p $BIN
fi

export GOOS=$OS
echo "GOOS: $GOOS"

export GOARCH=$ARCH
echo "GOARCH: $GOARCH"

export GOBIN=$BIN
echo "GOBIN: $GOBIN"
