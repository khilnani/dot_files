#!/usr/bin/env bash

if test -d "$TMPDIR"; then
    :
elif test -d "$TMP"; then
    TMPDIR=$TMP
elif test -d /var/tmp; then
    TMPDIR=/var/tmp
else
    TMPDIR=/tmp
fi

echo "Based on https://www.srihash.org"

if [[ $1 =~ http.* ]] 
then
		rm -rf $TMPDIR/sri-file
		curl $1 -o $TMPDIR/sri-file
		sha=`openssl dgst -sha256 -binary $TMPDIR/sri-file | openssl base64 -A`
    echo "sha256-$sha"
else
		sha=`openssl dgst -sha256 -binary "$@" | openssl base64 -A`
    echo "sha256-$sha"
fi

