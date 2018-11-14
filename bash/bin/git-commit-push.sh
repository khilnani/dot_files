#!/bin/sh

git config user.email

git commit -am "$1" && git push
