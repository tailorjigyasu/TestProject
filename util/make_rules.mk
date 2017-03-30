AR=ar
CC=gcc
CXX=g++
OBJDUMP=objdump

PYTHON_UTILS=python util/make_util.py
PYTHON_CREATE_DIR=$(PYTHON_UTILS) create_dir
PYTHON_REMOVE_DIR=$(PYTHON_UTILS) remove_dir
PYTHON_REMOVE_FILE=$(PYTHON_UTILS) remove_file
