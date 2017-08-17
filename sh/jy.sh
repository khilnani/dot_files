#!/bin/sh -x

if test -z "$2"
then
  echo "USAGE: $0 FILE.json FILE.yml"
else
  python -c 'import sys, yaml, json; yaml.safe_dump(json.load(sys.stdin), sys.stdout, default_flow_style=False)' < $1.json > $2.yml
fi
