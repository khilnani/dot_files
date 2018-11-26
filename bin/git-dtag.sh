#!/bin/sh -x

git tag -d $@
git push origin :refs/tags/$@

