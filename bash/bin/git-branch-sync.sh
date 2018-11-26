#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "Please specify a branch name"
else
	git checkout "$1"
	git merge master
fi


