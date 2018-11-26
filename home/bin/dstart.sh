#!/bin/sh

#docker start `docker ps -f ancestor=$1 -q` $2
docker start $1
