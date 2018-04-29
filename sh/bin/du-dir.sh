#!/bin/sh

du -s $1 | awk '{ total += $1; print }; END { print total }'
