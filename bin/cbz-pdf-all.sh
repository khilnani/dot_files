#!/bin/sh

for FILE in *; do cd $FILE && cbz-pdf.sh && cd ..; done


