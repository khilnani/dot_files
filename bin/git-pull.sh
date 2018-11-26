#!/bin/sh -x

find . -type d -name .git -exec sh -c "cd \"{}\"/../ && pwd && git pull --all" \;
