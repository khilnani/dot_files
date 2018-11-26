#!/bin/sh

#docker rm `docker ps -f ancestor=$1 -q` $2
docker rm $1
