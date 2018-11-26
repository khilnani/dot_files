#!/bin/sh

#docker exec -i -t `docker ps -f ancestor=$1 -q` /bin/bash
docker exec -i -t $1 /bin/bash
