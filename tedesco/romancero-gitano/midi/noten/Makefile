# Author:  Yotam Medini  yotam.medini@gmail.com -- Created: 2016/November/11

ifneq ($(emv),)
emv:
	@echo $($(emv))
endif

.DELETE_ON_ERROR:

TARGETS = $(foreach n, 1 2 3 4 5 6 7, ${n}-noten.midi)

all: ${TARGETS}


1-noten.midi: ../Romancero-Gitano-1.mid
	midiconv.py -tv 3 0 0 -tv -1 1 0 $< $@

2-noten.midi: ../Romancero-Gitano-2.mid
	midiconv.py -tv 3 0 0 -tv -1 1 0 $< $@

3-noten.midi: ../Romancero-Gitano-3.mid
	midiconv.py -tv 3 0 0 -tv -1 1 0 $< $@

4-noten.midi: ../Romancero-Gitano-4.mid
	midiconv.py -tv 3 0 0 -tv -1 1 0 $< $@

5-noten.midi: ../Romancero-Gitano-5.mid
	midiconv.py -tv 3 0 0 -tv -1 1 0 $< $@

6-noten.midi: ../Romancero-Gitano-6.mid
	midiconv.py -tv 3 0 0 -tv -1 1 0 $< $@

7-noten.midi: ../Romancero-Gitano-7.mid
	midiconv.py -tv 3 0 0 -tv -1 1 0 $< $@

clean:
	rm -f ${TARGETS}
