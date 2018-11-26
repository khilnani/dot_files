#!/bin/sh

docker inspect --format '{{ .NetworkSettings.IPAddress }}' "$@"
