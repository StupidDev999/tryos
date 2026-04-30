ifeq ($(MAKELEVEL),0)
$(warning Running this Makefile standalone is NOT recommended.)
$(warning Try running it using the root directory Makefile.)
endif

BIOSDIR := bios

bios:
	$(MAKE) -C $(BIOSDIR)/

.PHONY : bios
