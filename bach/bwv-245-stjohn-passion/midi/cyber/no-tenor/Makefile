# Author:  Yotam Medini  yotam.medini@gmail.com -- Created: 2015/February/20

# -*- Makefile -*-

ifneq ($(emv),)
emv:
	@echo $($(emv))
endif

.DELETE_ON_ERROR:

TARGETS := $(shell cd ../tenor-nba; ls *.midi)

%.midi: Makefile
	@false
	readlink ../tenor-nba/${@}
	midiconv.py -tv 3 0 0 \
	    $$(readlink ../tenor-nba/${@} | sed -e s/BACH/Bach/ -e s/_ten//) \
	    $@

all: ${TARGETS}

clean:
	rm -f ${TARGETS}
