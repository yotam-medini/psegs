#!/usr/bin/make -f
# Author:  Yotam Medini  yotam.medini@gmail.com -- Created: 2016/June/12

ifneq ($(emv),)
emv:
	@echo $($(emv))
endif

default:
	echo Please specify explicit target
	false

.DELETE_ON_ERROR:


TARGETS = \
1-SELIG-noten.midi \
2-DENNALLES-noten.midi \
3-HERR-noten.midi \
4-WIELIEBLICH-noten.midi \
5-IHRHABT-noten.midi \
6-DENNWIR-noten.midi \
7-Seilig-noten.midi \
20-noten.midi

all: ${TARGETS}

1-SELIG-noten.midi: ../BRAHMS_REQUIEM_1SELIG.mid
	midiconv.py -tv 3 0 0 $< $@

2-DENNALLES-noten.midi: ../BRAHMS_REQUIEM_2DENNALLES.mid
	midiconv.py -tv 3 0 0 $< $@

3-HERR-noten.midi: ../BRAHMS_REQUIEM_3HERR.mid
	midiconv.py -tv 4 0 0 $< $@

4-WIELIEBLICH-noten.midi: ../BRAHMS_REQUIEM_4WIELIEBLICH.mid
	midiconv.py -tv 3 0 0 $< $@

5-IHRHABT-noten.midi: ../BRAHMS_REQUIEM_5IHRHABT.mid
	midiconv.py -tv 4 0 0 $< $@

6-DENNWIR-noten.midi: ../BRAHMS_REQUIEM_6DENNWIR.mid
	midiconv.py -tv 4 0 0 $< $@

7-Seilig-noten.midi: ../BRahms_REQuiem_7Seilig.mid
	midiconv.py -tv 3 0 0 $< $@

clean:
	rm -f ${TARGETS}
