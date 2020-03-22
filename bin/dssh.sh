#!/usr/bin/env bash

PRECMD=


if [ "$(uname)" == "Darwin" ]; then
  echo "MacOS"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  echo "Ubuntu"
elif [ "$(expr substr $(uname -s) 1 5)" == "MINGW" ]; then
  echo "Windows"
  PRECMD=winpty
fi

#docker exec -i -t `docker ps -f ancestor=$1 -q` /bin/bash
$PRECMD docker exec -it $1 bash
