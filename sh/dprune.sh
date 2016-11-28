#!/bin/sh

echo "Deleting dangling containers"
docker rmi $(docker images --filter dangling=true -q) --force
