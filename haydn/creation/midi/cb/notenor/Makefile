ifneq ($(emv),)
emv:
	@echo $($(emv))
endif

.DELETE_ON_ERROR:

TARGET = \
	02SPIRIT_ten.midi \
	03RAGE_ten.midi \
	05WORK_ten.midi \
	11HARP_ten.midi \
	14HEAVENS_ten.midi \
	20LORD_ten.midi \
	27a_SOUL_ten.midi \
	27B_GLORIOUS_ten.midi \
	29a-notenor.midi \
	29b-notenor.midi \
	33SING_ten.midi

all: ${TARGET}

clean: rm -rf ${TARGET}

02SPIRIT_notenor.midi: ../Haydn_Creation_02Spirit.mid
	midiconv.py -tv 3 0 0 $< $@

03RAGE_notenor.midi: ../Haydn_Creation_03Rage.mid
	midiconv.py -tv 3 0 0 $< $@

05WORK_notenor.midi: ../Haydn_Creation_05Work.mid
	midiconv.py -tv 4 0 0 $< $@

11HARP_notenor.midi: ../Haydn_Creation_11Harp.mid
	midiconv.py -tv 3 0 0 $< $@

14HEAVENS_notenor.midi: ../Haydn_Creation_14Heavens.mid
	midiconv.py -tv 6 0 0 $< $@

20LORD_notenor.midi: ../HAYDN_CREATION_20Lord.mid
	midiconv.py -tv 3 0 0 $< $@

27a_SOUL_notenor.midi: ../HAYDN_CREATION_27a_soul.mid
	midiconv.py -tv 3 0 0 $< $@

27b_GLORIOUS_notenor.midi: ../HAYDN_CREATION_27b_glorious.mid
	midiconv.py -tv 3 0 0 $< $@

29a-notenor.midi: ../HAYDN_CREATION_29a_Bliss.mid
	midiconv.py -tv 5 0 0 -tv -1 1 0 $< $@

29b-notenor.midi: ../HAYDN_CREATION_29bStars.mid
	midiconv.py -tv 5 0 0 -tv -1 1 0 $< $@

33SING_notenor.midi: ../HAYDN_CREATION_33Sing.mid
	midiconv.py -tv 3 0 0 $< $@
