#!/bin/sh

echo "Files larger than 99mb are not allowed by github"
find . -type f -size +99M
