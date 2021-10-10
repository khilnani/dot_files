#!/bin/sh -x

find $1 -exec mv {} "${PWD##*/}-"{} \;

