#!/bin/sh -x


# Delete and recreate output directory
# Loop through each file

# brew install imagemagick

for f in *.cbz
do
  [ -e "${f%.*}" ] && rm -rf "${f%.*}"
  mkdir "${f%.*}"
  unzip "$f" -d "${f%.*}/"
  convert "${f%.*}/*" "${f%.*}.pdf"
  rm -rf "${f%.*}"
done


