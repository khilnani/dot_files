#!/bin/sh

docker exec -i -t `docker ps -f ancestor=$1 -q` /bin/bash
