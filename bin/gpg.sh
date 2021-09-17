#!/bin/sh -x

 gpg -c --cipher-algo AES256 "$@"
