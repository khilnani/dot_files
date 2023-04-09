#!/bin/sh


# brew install imagemagick

rm-dot_underscore.sh
rm-ds_store.sh
find . -name "*.xml" -type f -print -delete
find . -name "*.txt" -type f -print -delete

for f in *; do
  if [[ -d "$f" && ! -L "$f" ]]; then
    echo "*********** Processing $f ***********"
    convert "$f/*" "$f.pdf" && rm -rf "$f"
  fi;
done



