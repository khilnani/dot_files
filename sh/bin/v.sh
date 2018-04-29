#!/bin/sh -x

if test -z "$1"
then
  echo "USAGE: $0 COMMAND"
else
  VAGRANT_LOG=INFO vagrant $1 $2
fi
