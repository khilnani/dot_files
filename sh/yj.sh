#!/bin/sh -x

if test -z "$2"
then
  echo "USAGE: $0 FILE.yml FILE.json"
else
  python -c 'import sys, yaml, json; json.dump(yaml.load(sys.stdin), sys.stdout, indent=4)' < $1.yaml > $2.json
fi
