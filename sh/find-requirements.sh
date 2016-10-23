#!/bin/bash -x

for ea in `find . -name requirements.txt`; do cat $ea; done | sort -u --ignore-case
