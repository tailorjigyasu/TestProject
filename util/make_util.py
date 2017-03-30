import os
import sys
import shutil

def create_dir(path):
    loc, file =  os.path.split(path)
    if(False==os.path.isdir(loc)):
        os.makedirs(loc)

def remove_dir(path):
    if os.path.exists(path):
        shutil.rmtree(path)

def remove_file(path):
    if os.path.exists(path):
        os.remove(path)


action = sys.argv[1]
path = sys.argv[2]

if(action=='create_dir'):
    create_dir(path)
elif(action=='remove_dir'):
    remove_dir(path)
elif(action=='remove_file'):
    remove_file(path)
else:
    print('\nERROR: Undefined Action\n\n')