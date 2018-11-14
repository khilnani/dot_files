#!/bin/sh

git config user.email
git config user.user

git commit -am "$1" && git push
