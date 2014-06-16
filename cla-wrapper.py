#!/usr/bin/python

import os, sys, logging

command_args = ""
split = False

for i in range(1, len(sys.argv)):
    arg = sys.argv[i]
    if  i < len(sys.argv)-1 and "Supervisor" in sys.argv[i] and  "Dashboard" in sys.argv[i+1]:
        if '"' in arg or split:
            command_args += '%s ' % arg 
        else:
            command_args += '"%s ' % arg 
        split = True
    elif  split == True:
        split = False
        if '"' in arg:
            command_args += '%s ' % arg 
        else:
            command_args += '%s" ' % arg 
    elif '"' in arg:
        command_args += '%s ' % arg
    elif " " in arg:
        command_args += '"%s" ' % arg
    else:
        command_args += '%s ' % arg

if os.system(command_args):
    raise BaseException("%s => %s" % (sys.argv, command_args))
