#!/usr/bin/env bash

# $1 REPO
# $2 TOKEN

if [[ -n "$2" ]]; then
  curl -d '{"name":"'$1'", "private":"true", "auto_init":"true"}' \
    -H "Authorization: token $2" \
    -X POST https://api.github.com/user/repos
else
  echo "USAGE: $0 REPO TOKEN"
fi
