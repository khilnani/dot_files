#!/bin/sh -x

# docker pull mangadl/manga-py

docker run -it -v ${PWD}:/home/manga mangadl/manga-py $1
