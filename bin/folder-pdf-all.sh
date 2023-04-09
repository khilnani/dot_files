#!/bin/sh

for f in *; do
  if [[ -d "$f" && ! -L "$f" ]]; then
    cd "$f" && folder-pdf.sh && cd ..
  fi;
done

