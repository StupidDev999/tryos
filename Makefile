include BasicMakefile.mak

export BINDIR := bin
export OBJDIR := objs


BOOTLOADER_DIR := bootloader

all:

boot: bootloader # handy alias for 'bootloader'

bootloader:
	$(MAKE) -C $(BOOTLOADER_DIR)/


.PHONY : all boot bootloader
