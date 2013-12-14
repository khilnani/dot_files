#!/usr/bin/env python

import os
import sys
import subprocess

op = ''
boxes = [
	  {'name': 'centos-6.5',  'url': 'https://dl.dropboxusercontent.com/u/26568959/VagrantBoxes/CentOS-6.5-i386.box'},
	  {'name': 'ubuntu-12',   'url': 'https://dl.dropboxusercontent.com/u/26568959/VagrantBoxes/CentOS-6.5-i386.box'}
	]

try:
  op = subprocess.check_output('vagrant box list', shell=True)
  if op.find('Usage:') != -1:
    print op
    sys.exit()
except:
  print 'Unable to execute: vagrant box list'
else:
  for box in boxes:
    if op.find(box['name']) == -1:
      print('Adding Box {} from {}'.format(box['name'],box['url']))
      os.system('vagrant box add {} {}'.format(box['name'], box['url']))
    else:
      print('Box {} already exists.'.format(box['name']))
