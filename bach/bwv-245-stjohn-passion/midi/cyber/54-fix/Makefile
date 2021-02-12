ifneq ($(emv),)
emv:
	@echo $($(emv))
endif

FIXED = \
	Bach_SJP_54-fixed.mid \
	BACH_SJP_54_sop-fixed.mid \
	BACH_SJP_54_alt-fixed.mid \
	BACH_SJP_54_ten-fixed.mid \
	BACH_SJP_54_bas-fixed.mid

all: ${FIXED}

MIDICONV = \
	midiconv.py -note 25 71 -note 89 66 \
	-note 313 59 \
	-note 343 59 \
	-note 553 57 -note 583 54 -note 613 52 \
	-note 827 50 -note 857 59 -note 887 47

Bach_SJP_54-fixed.mid:	  Bach_SJP_54.mid
	${MIDICONV} $< $@
BACH_SJP_54_sop-fixed.mid: BACH_SJP_54_sop.mid
	${MIDICONV} $< $@
BACH_SJP_54_alt-fixed.mid: BACH_SJP_54_alt.mid
	${MIDICONV} $< $@
BACH_SJP_54_ten-fixed.mid: BACH_SJP_54_ten.mid
	${MIDICONV} $< $@
BACH_SJP_54_bas-fixed.mid: BACH_SJP_54_bas.mid
	${MIDICONV} $< $@





