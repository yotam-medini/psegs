# -*- Makefile -*-

ifneq ($(emv),)
emv:
	@echo $($(emv))
endif

.DELETE_ON_ERROR:

SATB = \
	1-satb.mid \
	2-satb.mid \
	4.mid \
	5-satb.mid \

NON_SATB = \
	3-ssatb.mid \
	6-satb.mid \
	7-s.mid \
	8-satb.mid

MIDIS = ${SATB} ${NON_SATB}

TENOR_MIDIS = $(foreach f, $(MIDIS), tenor/${f})
NONTENOR_MIDIS = $(foreach f, $(MIDIS), no-tenor/${f})

TENOR_SATB_MIDIS = $(foreach f, $(SATB), tenor/${f})
NONTENOR_SATB_MIDIS = $(foreach f, $(SATB), no-tenor/${f})

# TV_TENOR = 1.2 10 -tv -1 0.8 0
TV_TENOR = 1.3 10 -tv -1 0.7 0

${TENOR_SATB_MIDIS}: tenor/%.mid: %.mid
	midiconv.py -tv 3 ${TV_TENOR} $< $@

tenor/3-ssatb.mid: 3-ssatb.mid
	midiconv.py -tv 4 ${TV_TENOR} $< $@ 

tenor/6-satb.mid: 6-satb.mid
	midiconv.py -tv 7 ${TV_TENOR} $< $@

tenor/7-s.mid: 7-s.mid
	midiconv.py -tv 7 ${TV_TENOR} $< $@

tenor/8-satb.mid: 8-satb.mid
	midiconv.py -tv 7 ${TV_TENOR} $< $@

${NONTENOR_SATB_MIDIS}: no-tenor/%.mid: %.mid
	midiconv.py -tv 3 0 0 $< $@

no-tenor/3-ssatb.mid: 3-ssatb.mid
	midiconv.py -tv 4 0 0 $< $@

no-tenor/6-satb.mid: 6-satb.mid
	midiconv.py -tv 7 0 0 $< $@

no-tenor/7-s.mid: 7-s.mid
	midiconv.py -tv 7 0 0 $< $@

no-tenor/8-satb.mid: 8-satb.mid
	midiconv.py -tv 7 0 0 $< $@

tenor-midis: ${TENOR_MIDIS}
non-tenor-midis: ${NONTENOR_MIDIS}

all-midis: tenor-midis non-tenor-midis

clean:
	rm -f ${TENOR_MIDIS} ${NONTENOR_MIDIS}
