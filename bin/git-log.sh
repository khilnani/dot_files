#!/bin/sh

# https://git-scm.com/docs/pretty-formats
# oneline, short, medium, full
git log --pretty=medium --abbrev-commit "$@"
