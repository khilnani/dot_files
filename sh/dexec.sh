#!/bin/sh

docker exec `docker ps -f ancestor=$1 -q` $2
