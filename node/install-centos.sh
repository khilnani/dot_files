#!/bin/sh

curl -O http://download-i2.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm

sudo rpm -ivh epel-release-6-8.noarch.rpm

sudo yum -y install npm --enablerepo=epel
