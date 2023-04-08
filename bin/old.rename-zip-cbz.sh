#!/bin/bash

find . -name "*.zip" -exec bash -c 'mv -- "$1" "${1%.zip}.cbz"' bash {} \;

