#!/usr/bin/env sh

##############################################
#
##############################################

yum groupinstall "Development Tools"
yum install ruby
yum install wget
yum install curl
yum install git-core
yum install links lynx

yum install gcc g++ make automake autoconf curl-devel openssl-devel zlib-devel httpd-devel apr-devel apr-util-devel sqlite-devel

yum install ruby-rdoc ruby-devel

yum install rubygems
gem update
gem update --system

yum install python-setuptools
easy_install pip

##############################################
