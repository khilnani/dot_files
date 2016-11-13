#!/bin/sh -x

git tag $@
git push origin --tags

