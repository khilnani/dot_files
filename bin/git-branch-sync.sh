#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "Please specify a branch name"
else
    git fetch
    git merge origin/master
fi


