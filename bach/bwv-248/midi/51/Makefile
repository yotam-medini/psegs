#!/usr/bin/make -f

ifneq ($(emv),)
emv:
	@echo $($(emv))
endif

.DELETE_ON_ERROR:

SMORE = 1.1 1
MORE = 1.3 5
LESS = 0.9 -5

51-vocals.midi: bwv0248_51.mid
	midiconv.py -tv -1 ${LESS} \
	    -tv 4 ${MORE} -tv 5 ${MORE} -tv 6 ${MORE} \
	    $< $@

51-tenor.midi: bwv0248_51.mid
	midiconv.py -tv -1 ${LESS} \
	    -tv 4 ${SMORE} -tv 5 ${SMORE} -tv 6 ${MORE} \
	    $< $@

51-notenor.midi: bwv0248_51.mid
	midiconv.py -tv -1 ${LESS} \
	    -tv 4 ${MORE} -tv 5 ${MORE} -tv 6 0 0 \
	    $< $@

51-novocal.midi: bwv0248_51.mid
	midiconv.py -tv -1 ${LESS} \
	    -tv 4 0 0 -tv 5 0 0 -tv 6 0 0 \
	    $< $@

TARGETS = 51-vocals.midi 51-tenor.midi 51-notenor.midi 51-novocal.midi
all: ${TARGETS}

clean:
	rm -f ${TARGETS}
