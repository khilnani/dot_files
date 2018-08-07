#!/bin/sh


rsync -av --progress . $HOME --exclude install.sh

