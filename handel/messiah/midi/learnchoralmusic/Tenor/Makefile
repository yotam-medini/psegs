# -*- Makefile -*-
# Author:  Yotam Medini  yotam.medini@gmail.com -- Created: 2014/October/12

ifneq ($(emv),)
emv:
	@echo $($(emv))
endif

.DELETE_ON_ERROR:

LOWER_VAR = $(call lc,$(VAR))

ALLSRC = $(wildcard *.MID)
ALLBASE = $(patsubst %.MID, %, ${ALLSRC})
ALLTGT = $(patsubst %, patched/%.midi, ${ALLBASE})

# allbase := $(shell echo ${ALLBASE} | tr A-Z a-z)
# alltgt = $(patsubst %, patched/%.midi, ${allbase})

PXS = -px 1:0 -px 2:0 -px 3:1 -px 4:0 -px 5:24

all: ${ALLTGT}

# patched/39-bonds.midi: 39-BONDS.MID
# 	midiconv.py ${PXS} $< $@

patched/%.midi: %.MID
	midiconv.py ${PXS} $< $@
