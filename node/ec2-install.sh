#!/usr/bin/env sh


./configure  
make  
make install
ln -s /usr/local/bin/node /usr/bin/node
ln -s /usr/local/lib/node /usr/lib/node
ln -s /usr/local/bin/npm /usr/bin/npm
ln -s /usr/local/bin/node-waf /usr/bin/node-waf

npm install -g express
