#!/bin/sh

#docker logs `docker ps -f ancestor=$1 -q`
docker logs $1
