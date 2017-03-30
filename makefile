# usage:
#   make all
# to clean it:
#   make clean
##############################################################

TOOLS_PATH=util
-include $(TOOLS_PATH)/make_rules.mk

OUT_DIR=out
OUT_FILE=output.exe
OUT=$(OUT_DIR)/$(OUT_FILE)

C_PATH=src
C_SOURCE=\
	main.c \
	math.c \
	print.c

OBJ_DIR=obj
OBJ_SOURCE:=$(patsubst %.c,$(OBJ_DIR)/%.o,$(C_SOURCE))

CFLAGS=-c -Werror -Wall
INCLUDES+=-I inc


##############################################################

all:$(OUT)

$(OUT):$(OBJ_SOURCE)
	@$(PYTHON_CREATE_DIR) $@
	@echo generating output $@
	@echo $(CC) $(CFLAGS) $(INCLUDES) $(DEPENDENCIES) $(OBJ_SOURCE) -o $@
	@$(CC) $(OBJ_SOURCE) -o $@

$(OBJ_DIR)/%.o:$(C_PATH)/%.c
	@$(PYTHON_CREATE_DIR) $@
	@echo building $<
	@$(CC) $(CFLAGS) $(INCLUDES) $(DEPENDENCIES) $< -o $@

.PHONY: clean

clean:
	@echo cleaning objects ...
	@$(PYTHON_REMOVE_DIR) $(OBJ_DIR)
	@echo cleaning binaries ...
	@$(PYTHON_REMOVE_DIR) $(OUT_DIR)

##############################################################
