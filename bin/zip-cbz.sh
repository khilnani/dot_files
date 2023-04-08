#!/bin/sh

cd "$1" && zip -r "../$1.cbz" . -x '**/.*' -x '**/__MACOSX' && cd .. && rm -rf "$1"

