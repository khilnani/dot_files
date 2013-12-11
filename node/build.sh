#!/bin/sh

curl -O http://nodejs.org/dist/v0.10.22/node-v0.10.22.tar.gz
tar zxf node-v0.10.22.tar.gz

cd node-v0.10.22-linux-x86

pwd

./configure
make
make install

