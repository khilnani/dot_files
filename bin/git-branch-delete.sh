#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "Please specify a branch name"
else

	read -r -p "Delete $1. Continue?" input

	git branch -d "$1"
	git push -d origin "$1"

fi


