#!/bin/sh

find . -type d -name .git -exec sh -c "cd \"{}\"/../ && pwd && git status && git pull" \;
