#  Author:  Yotam Medini  yotam.medini@gmail.com -- Created: 2016/July/08

# -*- Makefile -*-

ifneq ($(emv),)
emv:
	@echo $($(emv))
endif

.DELETE_ON_ERROR:

TARGET = \
	1.midi \
	2a.midi \
	2b.midi \
	2c.midi \
	2d.midi \
	3a.midi \
	3b.midi \
	4a.midi \
	4b-bar.midi \
	4b.midi \
	4c.midi \
	5a.midi \
	5b.midi \
	5c.midi \
	6a.midi \
	6b.midi \
	6c.midi \
	6d.midi      

all: ${TARGET}

1.midi: ../braun-kohelet-1.mid
	midiconv.py -tv 4 0 0 -tv -1 1 0 $< $@

2a.midi: ../braun-kohelet-2a.mid
	midiconv.py -tv 4 0 0 -tv -1 1 0 $< $@

2b.midi: ../braun-kohelet-2b.mid
	midiconv.py -tv 4 0 0 -tv -1 1 0 $< $@

2c.midi: ../braun-kohelet-2c.mid
	midiconv.py -tv 4 0 0 -tv -1 1 0 $< $@

2d.midi: ../braun-kohelet-2d.mid
	midiconv.py -tv 4 0 0 -tv -1 1 0 $< $@

3a.midi: ../braun-kohelet-3a.mid
	midiconv.py -tv 4 0 0 -tv -1 1 0 $< $@

3b.midi: ../braun-kohelet-3b.mid
	midiconv.py -tv 4 0 0 -tv -1 1 0 $< $@

4a.midi: ../braun-kohelet-4a.mid
	midiconv.py -tv 4 0 0 -tv -1 1 0 $< $@

4b-bar.midi: ../braun-kohelet-4b-bar.mid
	midiconv.py -tv 5 0 0 -tv -1 1 0 $< $@

4b.midi: ../braun-kohelet-4b.mid
	midiconv.py -tv 5 0 0 -tv -1 1 0 $< $@

4c.midi: ../braun-kohelet-4c.mid
	midiconv.py -tv 4 0 0 -tv -1 1 0 $< $@

5a.midi: ../braun-kohelet-5a.mid
	midiconv.py -tv 4 0 0 -tv -1 1 0 $< $@

5b.midi: ../braun-kohelet-5b.mid
	midiconv.py -tv 4 0 0 -tv -1 1 0 $< $@

5c.midi: ../braun-kohelet-5c.mid
	midiconv.py -tv 4 0 0 -tv -1 1 0 $< $@

6a.midi: ../braun-kohelet-6a.mid
	midiconv.py -tv 4 0 0 -tv -1 1 0 $< $@

6b.midi: ../braun-kohelet-6b.mid
	midiconv.py -tv 4 0 0 -tv -1 1 0 $< $@

6c.midi: ../braun-kohelet-6c.mid
	midiconv.py -tv 5 0 0 -tv -1 1 0 $< $@

6d.midi: ../braun-kohelet-6d.mid
	midiconv.py -tv 4 0 0 -tv -1 1 0 $< $@

