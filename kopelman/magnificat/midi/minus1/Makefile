# Author:  Yotam Medini  yotam.medini@gmail.com -- Created: 2017/June/09
# Minus -one versions of   http://www.dycom-il.com/k/kopelman-mag*.mid files


kopelman-mag1-no-sop.midi: ../kopelman-mag1.mid

kopelman-mag1-no-alt.midi: ../kopelman-mag1.mid

kopelman-mag1-no-ten.midi: ../kopelman-mag1.mid

kopelman-mag1-no-bas.midi: ../kopelman-mag1.mid

# -*- Makefile -*-

ifneq ($(emv),)
emv:
	@echo $($(emv))
endif

.DELETE_ON_ERROR:


SEQ7 = 1 2 3 4 5 5 6 7
VOICES = sop alt ten bas
MINUS1_MIDIS = $(foreach n, ${SEQ7}, \
    $(foreach v, ${VOICES}, kopelman-mag${n}-no-${v}.midi))

all: ${MINUS1_MIDIS}

clean:
	rm -f ${MINUS1_MIDIS}

kopelman-mag1-no-sop.midi: ../kopelman-mag1.mid
	midiconv.py -tv 1 0 0 $< $@

kopelman-mag1-no-alt.midi: ../kopelman-mag1.mid
	midiconv.py -tv 2 0 0 $< $@

kopelman-mag1-no-ten.midi: ../kopelman-mag1.mid
	midiconv.py -tv 3 0 0 $< $@

kopelman-mag1-no-bas.midi: ../kopelman-mag1.mid
	midiconv.py -tv 4 0 0 $< $@


kopelman-mag2-no-sop.midi: ../kopelman-mag2.mid
	midiconv.py -tv 1 0 0 -tv 2 0 0 $< $@

kopelman-mag2-no-alt.midi: ../kopelman-mag2.mid
	midiconv.py -tv 3 0 0 -tv 4 0 0 $< $@

kopelman-mag2-no-ten.midi: ../kopelman-mag2.mid
	midiconv.py -tv 5 0 0 -tv 6 0 0 $< $@

kopelman-mag2-no-bas.midi: ../kopelman-mag2.mid
	midiconv.py -tv 7 0 0 -tv 8 0 0 $< $@


kopelman-mag3-no-sop.midi: ../kopelman-mag3.mid
	midiconv.py -tv 1 0 0 -tv 2 0 0 $< $@

kopelman-mag3-no-alt.midi: ../kopelman-mag3.mid
	midiconv.py -tv 3 0 0 -tv 4 0 0 $< $@

kopelman-mag3-no-ten.midi: ../kopelman-mag3.mid
	midiconv.py -tv 5 0 0 -tv 6 0 0 $< $@

kopelman-mag3-no-bas.midi: ../kopelman-mag3.mid
	midiconv.py -tv 5 0 0 -tv 6 0 0 $< $@

kopelman-mag4-no-sop.midi: ../kopelman-mag4.mid
	midiconv.py -tv 1 0 0 $< $@

kopelman-mag4-no-alt.midi: ../kopelman-mag4.mid
	midiconv.py -tv 2 0 0 $< $@

kopelman-mag4-no-ten.midi: ../kopelman-mag4.mid
	midiconv.py -tv 3 0 0 $< $@

kopelman-mag4-no-bas.midi: ../kopelman-mag4.mid
	midiconv.py -tv 4 0 0 $< $@


kopelman-mag5-no-sop.midi: ../kopelman-mag5.mid
	midiconv.py -tv 1 0 0 $< $@

kopelman-mag5-no-alt.midi: ../kopelman-mag5.mid
	midiconv.py -tv 2 0 0 $< $@

kopelman-mag5-no-ten.midi: ../kopelman-mag5.mid
	midiconv.py -tv 3 0 0 $< $@

kopelman-mag5-no-bas.midi: ../kopelman-mag5.mid
	midiconv.py -tv 4 0 0 $< $@


kopelman-mag6-no-sop.midi: ../kopelman-mag6.mid
	midiconv.py -tv 1 0 0 $< $@

kopelman-mag6-no-alt.midi: ../kopelman-mag6.mid
	midiconv.py -tv 2 0 0 $< $@

kopelman-mag6-no-ten.midi: ../kopelman-mag6.mid
	midiconv.py -tv 3 0 0 $< $@

kopelman-mag6-no-bas.midi: ../kopelman-mag6.mid
	midiconv.py -tv 4 0 0 $< $@


kopelman-mag7-no-sop.midi: ../kopelman-mag7.mid
	midiconv.py -tv 1 0 0 $< $@

kopelman-mag7-no-alt.midi: ../kopelman-mag7.mid
	midiconv.py -tv 2 0 0 $< $@

kopelman-mag7-no-ten.midi: ../kopelman-mag7.mid
	midiconv.py -tv 3 0 0 $< $@

kopelman-mag7-no-bas.midi: ../kopelman-mag7.mid
	midiconv.py -tv 4 0 0 $< $@
