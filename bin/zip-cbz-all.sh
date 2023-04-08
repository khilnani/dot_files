#!/bin/sh

for FILE in *; do 
  if [[ -d "$FILE" && ! -L "$FILE" ]]; then
    zip-cbz.sh "$FILE"; 
  fi;
done


