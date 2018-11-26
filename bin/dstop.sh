#!/bin/sh

#docker stop `docker ps -f ancestor=$1 -q` $2
docker stop $1
