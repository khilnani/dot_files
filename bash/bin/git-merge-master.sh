#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "Please specify a branch name"
else
	git checkout master
	git merge --squash "$1"
	git commit -v
fi


