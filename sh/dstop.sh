#!/bin/sh

docker stop `docker ps -f ancestor=$1 -q` $2
