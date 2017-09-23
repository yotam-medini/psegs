# Author:  Yotam Medini  yotam.medini@gmail.com -- Created: 2016/July/29

ifneq ($(emv),)
emv:
	@echo $($(emv))
endif

.DELETE_ON_ERROR:

NUMS = 01 05 09 10 11 13 16 19 20
MIDIS := $(foreach n, ${NUMS}, ${n}-noten.midi)

01-noten.midi: ../Mendelssohn_Elijah01.mid
	midiconv.py -tv 3 0 0  -tv -1 1 0 $< $@ 

05-noten.midi: ../Mendelssohn_Elijah05.mid
	midiconv.py -tv 3 0 0  -tv -1 1 0 $< $@ 

09-noten.midi: ../Mendelssohn_Elijah09.mid
	midiconv.py -tv 3 0 0  -tv -1 1 0 $< $@ 

10-noten.midi: ../Mendelssohn_Elijah10.mid
	midiconv.py -tv 3 0 0  -tv -1 1 0 $< $@ 

11-noten.midi: ../Mendelssohn_Elijah11.mid
	midiconv.py -tv 5 0 0 -tv 6 0 0  -tv -1 1 0 $< $@ 

12-noten.midi: ../Mendelssohn_Elijah12.mid
	midiconv.py -tv 3 0 0 -tv -1 1 0 $< $@ 

13-noten.midi: ../Mendelssohn_Elijah13.mid
	midiconv.py -tv 3 0 0 -tv -1 1 0 $< $@ 

16-noten.midi: ../Mendelssohn_Elijah16.mid
	midiconv.py -tv 4 0 0 -tv -1 1 0 $< $@ 

19-noten.midi: ../Mendelssohn_Elijah19.mid
	midiconv.py -tv 5 0 0 -tv -1 1 0 $< $@ 

20-noten.midi: ../Mendelssohn_Elijah20.mid
	midiconv.py -tv 3 0 0 -tv -1 1 0 $< $@ 

all: ${MIDIS}
