#!/bin/sh 

for ea in `cat .gitignore`
do
    echo "Deleting: $ea"
    rm -rf  $ea
done
