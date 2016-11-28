#!/bin/sh

echo "Deleting containers"
docker rm $(docker ps -a -q) --force

echo "Deleting images"
docker rmi $(docker images -q) --force
