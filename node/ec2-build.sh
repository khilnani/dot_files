#!/usr/bin/env sh

yum install gcc
yum install gcc-c++ compat-gcc-32 compat-gcc-32-c++

./configure  
make  
make install
ln -s /usr/local/bin/node /usr/bin/node
ln -s /usr/local/lib/node /usr/lib/node
ln -s /usr/local/bin/npm /usr/bin/npm
ln -s /usr/local/bin/node-waf /usr/bin/node-waf

npm install -g express
