# Author:  Yotam Medini  yotam.medini@gmail.com -- Created: 2015/September/26

# -*- Makefile -*-

ifneq ($(emv),)
emv:
	@echo $($(emv))
endif

.DELETE_ON_ERROR:

BWV078-4-noten.midi: BWV078-4.mid
	midiconv.py -tv 2 0 0 -tv 3 0 0 $< $@
