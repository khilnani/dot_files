#!/bin/sh

# Delete all containers
echo "Deleting containers"
docker rm $(docker ps -a -q)

# Delete all images
echo "Deleting images"
docker rmi $(docker images -q)
