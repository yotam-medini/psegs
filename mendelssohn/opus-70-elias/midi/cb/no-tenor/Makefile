# Author:  Yotam Medini  yotam.medini@gmail.com -- Created: 2016/July/29

ifneq ($(emv),)
emv:
	@echo $($(emv))
endif

.DELETE_ON_ERROR:

# NUMS = 01 05 09 10 11 13 16 19 20
NUMS = 01 02 05 09 10 11 13 16 19 20 22 23 24 29 32 34 35 36 38 41 43

MIDIS := $(foreach n, ${NUMS}, ${n}-noten.midi)

01-noten.midi: ../Mendelssohn_Elijah01.mid
	midiconv.py -tv 3 0 0  -tv 5 2 20 -tv -1 1 0 $< $@ 

02-noten.midi: ../Mendelssohn_Elijah02.mid
	midiconv.py -tv 4 0 0  -tv 5 2 20 -tv -1 1 0 $< $@ 

05-noten.midi: ../Mendelssohn_Elijah05.mid
	midiconv.py -tv 3 0 0  -tv -1 1 0 $< $@ 

09-noten.midi: ../Mendelssohn_Elijah09.mid
	midiconv.py -tv 3 0 0  -tv 5 2 20  -tv -1 1 0 $< $@ 

10-noten.midi: ../Mendelssohn_Elijah10.mid
	midiconv.py -tv 3 0 0   -tv 5 2 20  -tv -1 1 0 $< $@ 

11-noten.midi: ../Mendelssohn_Elijah11.mid
	midiconv.py -tv 5 0 0 -tv 6 0 0  -tv 9 2 40  -tv -1 1 0 $< $@ 

12-noten.midi: ../Mendelssohn_Elijah12.mid
	midiconv.py -tv 3 0 0  -tv 5 2 20  -tv -1 1 0 $< $@ 

13-noten.midi: ../Mendelssohn_Elijah13.mid
	midiconv.py -tv 3 0 0  -tv 5 2 20  -tv -1 1 0 $< $@ 

16-noten.midi: ../Mendelssohn_Elijah16.mid
	midiconv.py -tv 4 0 0  -tv 6 2 20  -tv -1 1 0 $< $@ 

19-noten.midi: ../Mendelssohn_Elijah19.mid
	midiconv.py -tv 5 0 0 -tv -1 1 0 $< $@ 

20-noten.midi: ../Mendelssohn_Elijah20.mid
	midiconv.py -tv 3 0 0  -tv 5 2 20  -tv -1 1 0 $< $@ 

22-noten.midi: ../Mendelssohn_Elijah22.mid
	midiconv.py -tv 3 0 0  -tv 5 2 20  -tv -1 1 0 $< $@

23-noten.midi: ../Mendelssohn_Elijah23.mid
	midiconv.py -tv 4 0 0  -tv 6 2 20  -tv -1 1 0 $< $@

24-noten.midi: ../Mendelssohn_Elijah24.mid
	midiconv.py -tv 3 0 0  -tv 5 2 20  -tv -1 1 0 $< $@

29-noten.midi: ../Mendelssohn_Elijah29.mid
	midiconv.py -tv 3 0 0  -tv 5 2 20  -tv -1 1 0 $< $@

32-noten.midi: ../Mendelssohn_Elijah32.mid
	midiconv.py -tv 3 0 0 -tv -1 1 0 $< $@

34-noten.midi: ../Mendelssohn_Elijah34.mid
	midiconv.py -tv 3 0 0  -tv 5 2 20  -tv -1 1 0 $< $@

35-noten.midi: ../Mendelssohn_Elijah35.mid
	midiconv.py -tv 7 0 0 -tv -1 1 0 $< $@

36-noten.midi: ../Mendelssohn_Elijah36.mid
	midiconv.py -tv 3 0 0   -tv 5 2 20  -tv -1 1 0 $< $@

38-noten.midi: ../Mendelssohn_Elijah38.mid
	midiconv.py -tv 3 0 0  -tv 5 2 20  -tv -1 1 0 $< $@

41-noten.midi: ../MENDELSSOHN_ELIJAH41.mid
	midiconv.py -tv 5 0 0 -tv 6 0 0  -tv 9 2 20  -tv -1 1 0 $< $@

43-noten.midi: ../Mendelssohn_Elijah43.mid
	midiconv.py -tv 3 0 0  -tv 5 2 20  -tv -1 1 0 $< $@


all: ${MIDIS}
