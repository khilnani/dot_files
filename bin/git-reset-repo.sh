#!/bin/sh

if [ "$#" -ne 1 ]; then
  echo "Please provide a remote"
else
  cat .git/config
  rm -rf .git
  git init
  git add .
  git commit -am "Added"
  git remote add origin "$1"
  git push -u --force origin master
fi
