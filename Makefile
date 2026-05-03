include BasicMakefile.mak

export BINDIR := bin
export OBJDIR := objs

export DRIVE_IMG := $(BINDIR)/drive.img

BOOTLOADER_DIR := bootloader
INTERNAL_BOOTLOADER := $(BINDIR)/$(BOOTLOADER_DIR)/bootloader.bin

QEMU := qemu-system-x86_64
QEMU_FLAGS := -boot c -m 512M -no-reboot -d int

rall: boot all run

all: $(DRIVE_IMG)

boot: bootloader # handy alias for 'bootloader'

bootloader:
	$(MAKE) -C $(BOOTLOADER_DIR)/

$(DRIVE_IMG): $(INTERNAL_BOOTLOADER)
	mkdir -p $(dir $@)
	cat $^ > $@

run:
	$(QEMU) \
		-drive file=$(DRIVE_IMG),format=raw,index=0,media=disk \
		$(QEMU_FLAGS)


.PHONY : all boot bootloader run rall
