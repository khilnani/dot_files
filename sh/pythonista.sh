#!/usr/bin/env sh

docker run -t -i --name $1 --privileged -v ${HOME}/:/home/root/ -v ${PWD}:/opt/src -d khilnani/pythonlite
