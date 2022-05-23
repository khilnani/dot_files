#!/bin/bash

if [ $# -eq 0 ]; then
    echo "No Destination File name provided"
    exit 1
fi

if [[ -f "$1.cbz" ]]
then
  echo "$1.cbz exists."
  exit 1
fi

# Delete and recreate output directory
[ -e $1 ] && rm -rf $1
mkdir $1

# Loop through each file
for f in *.cbz
do
  # Skip the output file
  if [[ "$f" != *"$1.cbz"* ]]
  then
    unzip -o -d "$1/${f%.cbz}" "$f"
  fi
done

# Create the final zip
zip -r $1.cbz $1

rm -rf $1
