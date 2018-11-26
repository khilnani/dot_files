#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "Please specify a new branch name"
else
	git checkout master
	git fetch origin
	git reset --hard origin/master

	git checkout -b "$1"
	git push -u origin "$1"
fi


