#!/bin/sh -x

git branch -D $@
git push origin --delete $@

