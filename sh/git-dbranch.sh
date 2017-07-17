#!/bin/sh -x

git push origin --delete $@
git branch -d $@
git branch -D $@

