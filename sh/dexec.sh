#!/bin/sh

#docker exec `docker ps -f ancestor=$1 -q` $2
docker exec $1 $2
