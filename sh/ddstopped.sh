#!/bin/sh

echo "Deleting stopped containers"
docker rm $(docker ps -aq)
