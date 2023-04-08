#!/bin/sh


# Delete and recreate output directory
# Loop through each file

# brew install imagemagick

for f in *.cbz
do
  [ -e "${f%.*}" ] && rm -rf "${f%.*}"
  echo "*********** Processing $f ***********"
  mkdir "${f%.*}" && unzip -qq "$f" -x "*.txt" "*.xml" -d "${f%.*}/" &&  convert "${f%.*}/*" "${f%.*}.pdf" && rm -rf "${f%.*}" && rm -rf "$f"
done


