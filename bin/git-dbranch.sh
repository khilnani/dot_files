#!/bin/sh -x

git checkout master
git branch -D $@
git push origin --delete $@

