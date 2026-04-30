# basic makefile for every of my projects requiring Make
# syntax arg1 = dirname, arg2 = pattern
export rWildcard=$(foreach pdir,$(wildcard $(1:=/*)),$(call rWildcard,$(pdir),$2) $(filter $2,$(pdir)))

