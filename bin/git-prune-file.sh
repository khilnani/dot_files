#!/bin/sh -x

git filter-branch --force --index-filter 'git rm --cached --ignore-unmatch $@' --prune-empty --tag-name-filter cat -- --all
git push origin --force --all
