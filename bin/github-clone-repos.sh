#!/bin/bash


name=$1
if [[ -z "$1" ]]; then
  echo "USAGE: $0 ORG [SERVER]"
  exit 1
fi
echo "Using User/Org $name"

server=github.com
if [[ -n "$2" ]]; then
  server=$2
fi
echo "Using Github server $server"



filename=repos.txt
echo "Cloning repos from $filename"

repos=`cat $filename`
for repo in $repos;
do
  git clone git@$server:$name/$repo --depth 1
done
