#!/bin/sh

echo "Deleting dangling containers"
docker rmi $(docker images --filter dangling=true)

echo "Deleting stopped containers"
docker rm $(docker ps -aq)
