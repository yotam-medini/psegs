# -*- Makefile -*-

ifneq ($(emv),)
emv:
	@echo $($(emv))
endif

.DELETE_ON_ERROR:

TARGETS = \
	02-noten.midi \
	03-noten.midi \
	05-noten.midi \
	11-noten.midi \
	14-noten.midi \
	20-noten.midi \
	27-noten.midi \
	29-noten.midi \
	31-noten.midi \
	35-noten.midi

all: ${TARGETS}

clean:
	rm -f ${TARGETS}

02-noten.midi: ../HAYCRE01.mid
	midiconv.py -tv 3 0 0 $< $@

03-noten.midi: ../HAYCRE02.mid
	midiconv.py -tv 4 0 0 $< $@

05-noten.midi: ../HAYCRE04.mid
	midiconv.py -tv 4 0 0 $< $@

11-noten.midi: ../HAYCRE10.mid
	midiconv.py -tv 3 0 0 $< $@

14-noten.midi: ../HAYCRE13.mid
	midiconv.py -tv 6 0 0 $< $@

20-noten.midi: ../HAYCRE19.mid
	midiconv.py -tv 6 0 0 $< $@

27-noten.midi: ../HAYCRE26.mid
	midiconv.py -tv 3 0 0 $< $@

29-noten.midi: ../HAYCRE28.mid
	midiconv.py -tv 3 0 0 $< $@

31-noten.midi: ../HAYCRE30.mid
	midiconv.py -tv 5 0 0 $< $@

35-noten.midi: ../HAYCRE34.mid
	midiconv.py -tv 7 0 0 $< $@
