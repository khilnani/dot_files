#!/usr/bin/env bash

# Extracts token/password for a user from the ~/.gitcredentials file"

# USAGE: file.sh USER - Specify username"
# USAGE: $0 - Use git config user.name)"

# Get user from cmd arg
user=$1
# If none, check git user.name
if [[ -z "$user" ]]; then
  user=`git config user.name`
  # if none, abort
  if [[ -z "$user" ]]; then
    exit 1
  fi
fi

creds=`cat ~/.git-credentials`

for cred in $creds;
do
  if [[ $cred == *"/$user:"* ]]; then
    echo $cred  | cut -d':' -f 3 | cut -d'@' -f 1
  fi
done
