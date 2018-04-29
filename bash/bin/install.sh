#!/bin/sh

if [ ! -d "/usr/local/bin" ]; then
    mkdir /usr/local/bin
fi

rsync -av --progress . /usr/local/bin --exclude install.sh
