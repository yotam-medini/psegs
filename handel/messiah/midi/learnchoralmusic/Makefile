# -*- Makefile -*-
# Author:  Yotam Medini  yotam.medini@gmail.com -- Created: 2014/October/12

ifneq ($(emv),)
emv:
	@echo $($(emv))
endif

.DELETE_ON_ERROR:

ALLSRC = $(wildcard *.mid)
ALLBASE = $(patsubst %.mid, %, ${ALLSRC})
ALLTGT = $(patsubst %, no-tenor.d/%.midi, ${ALLBASE})

PXS = -px 1:0 -px 2:0 -px 4:0 -px 5:24 -tv 3 0 0

all: ${ALLTGT}

no-tenor.d/%.midi: %.mid
	midiconv.py ${PXS} $< $@
