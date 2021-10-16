#!/bin/sh -x


echo "-- Looking for iCloud files..."

find . -type f -name "*.icloud"

echo "-- Done checking."

read -r -p "Download from iCloud ?" input

find . -type f -name "*.icloud" -exec brctl download {} \;

# brctl log -w -s 
