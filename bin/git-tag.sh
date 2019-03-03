#!/bin/sh -x

git tag -a $@
git push origin --tags

