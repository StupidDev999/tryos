ifeq ($(MAKELEVEL),0)
$(warning Running this Makefile standalone is NOT recommended.)
$(warning Try running it using the root directory Makefile.)
endif

RP:=../..

OUTDIR := $(RP)/bin/bootloader
OBJDIR := $(RP)/objs/bootloader

OUT := $(OUTDIR)/bootloader.bin

AS := nasm
ASFLAGS := -f bin

SRCS := boot.asm
OBJS := $(patsubst %.asm,$(OBJDIR)/%.elf,$(SRCS))

$(info $(OBJS))

all: $(OUT)

$(OUT): $(OBJS)
	mkdir -p $(dir $@)
	cat $^ > $@

$(OBJDIR)/%.elf: %.asm
	mkdir -p $(dir $@)
	$(AS) $(ASFLAGS) $< -o $@

.PHONY : all

