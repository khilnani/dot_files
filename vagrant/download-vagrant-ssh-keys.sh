#!/bin/sh -x

url -O https://raw.github.com/mitchellh/vagrant/master/keys/vagrant
curl -O https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub

chmod 600 vagrant.pub
chmod 600 vagrant
