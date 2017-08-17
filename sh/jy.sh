#!/bin/sh

if test -z "$2"
then
  echo "USAGE: $0 file.json file.yml"
else
  python -c 'import sys, yaml, json; yaml.safe_dump(json.load(sys.stdin), sys.stdout, default_flow_style=False)' < $1 > $2
fi
