#!/usr/bin/env python

import sys
import os
import subprocess

op = subprocess.check_output('VBoxManage list vms', shell=True)
items = [line.split('" ') for line in op.split('\n')]

print ''

for ea in items:
  if len(ea[0].strip()) == 0:
    pass
  elif ea[0].find('<inaccessible>') != -1:
    os.system('VBoxManage unregistervm {}'.format(ea[1]))
    print 'DELETED: {}"'.format(ea[0])
  else:
    print '{}"'.format(ea[0])

print ''
