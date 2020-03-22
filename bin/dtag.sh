#!/usr/bin/env bash

function usage() {
    echo "$0 IMAGE TAG"
}

function main() {
    docker tag $1:latest $1:$2
    docker push $1:$2
}

if [ "$#" -ne 2 ]; then
    usage
else
   main $1 $2
fi
