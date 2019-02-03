#!/bin/bash

server=github.com

if [[ -n "$1" ]]; then
  server=$1
fi
echo "Using Github server $server"

filename=repos.txt
echo "Cloning repos from $filename"

repos=`cat $filename`
for repo in $repos;
do
  git clone git@$server:natgeo/$repo --depth 1
done
