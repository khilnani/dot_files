#!/usr/bin/env python

import sys
import os
import subprocess

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

op = subprocess.check_output('VBoxManage list vms', shell=True)
print op
confirm = readConsole('Delete all <inaccessible> VMs ? :', True, True)
if parseBool(confirm) == True:
  items = [line.split(' ') for line in op.split('\n')]
  for ea in items:
    if ea[0].find('<inaccessible>') != -1:
      os.system('VBoxManage unregistervm {}'.format(ea[1]))
  print 'Done.'
else:
  print 'Aborted.'




