# Author:  Yotam Medini  yotam.medini@gmail.com -- Created: 2017/March/17

TARGET = \
	02-noten.midi \
	06-noten.midi \
	09-noten.midi \
	11-noten.midi

all: ${TARGET}

02-noten.midi: ../BWV21_02Bekuemmernis.mid
	midiconv.py -tv 3 0 0 $< $@

06-noten.midi: ../BWV21_06Was_betruebts.mid
	midiconv.py -tv 3 0 0 $< $@

09-noten.midi: ../BWV21_09zufrieden.mid
	midiconv.py -tv 3 0 0 $< $@

11-noten.midi: ../BWV21_11Das_Lamm.mid
	midiconv.py -tv 3 0 0 $< $@

clean:
	rm -f ${TARGET}
