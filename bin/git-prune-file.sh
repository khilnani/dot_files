#!/bin/sh -x

if [ "$#" -ne 1 ]; then
  echo "Please provide a filename"
else
  git filter-branch --force --index-filter 'git rm --cached --ignore-unmatch $1' --prune-empty --tag-name-filter cat -- --all
  git push origin --force --all
fi
