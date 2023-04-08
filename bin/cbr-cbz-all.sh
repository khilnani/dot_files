#!/bin/sh

for FILE in *; do cd "$FILE" && cbr-cbz.sh && cd ..; done


