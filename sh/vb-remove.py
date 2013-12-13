#!/usr/bin/env python

import sys
import os
import subprocess
from optparse import OptionParser

def parseBool (obj):
  obj_str = str(obj).strip().lower()
  if obj == True or obj == 1:
    return True
  if obj == False or obj == 0:
    return False
  if obj_str in ("true", "yes", "1", "y"):
    return True
  if obj_str in ("false", "no", "0", "n"):
    return False
  return None

def readConsole(prompt='Please type/paste content:', required=True, bool=False):
  content = raw_input(prompt)
  if len( content.strip() ) == 0 and required == True:
    content = readConsole (prompt, required, bool)
  if bool:
    if parseBool(content) == None:
      content = readConsole (prompt, required, bool)
  return content

parser = OptionParser()
parser.add_option("-a", "--all", action="store_true", dest="delete_all", default=False)
parser.add_option("-f", "--force", action="store_true", dest="force", default=False)

(options, args) = parser.parse_args()
delete_all = options.delete_all

# print 'Force? {}'.format(options.force)

if options.delete_all == True and options.force == False:
  confirm = readConsole('Delete ALL? : ', True, True)
  if parseBool(confirm) == False:
    delete_all = False

# print 'Delete all? {}'.format(delete_all)

op = subprocess.check_output('VBoxManage list vms', shell=True)
items = [line.split('" ') for line in op.split('\n')]

print ''

for ea in items:
  if len(ea[0].strip()) == 0:
    pass
  else:
    if delete_all == True:
      os.system('VBoxManage unregistervm {}'.format(ea[1]))
      print '- Deleted {}"'.format(ea[0])
    else:
      confirm = readConsole('{}" - Delete? : '.format(ea[0]), True, True)
      if parseBool(confirm) == True:
        os.system('VBoxManage unregistervm {}'.format(ea[1]))
        print '- Deleted {}"'.format(ea[0])

print ''
