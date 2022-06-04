#!/bin/sh -x


# Delete and recreate output directory

# Loop through each file
for f in *.cbr
do
  [ -e "${f%.*}" ] && rm -rf "${f%.*}"
  mkdir "${f%.*}"
  unrar x "$f" "${f%.*}/"
  zip -r "${f%.*}.cbz" "${f%.*}"
  rm -rf "${f%.*}"
done


