# Author:  Yotam Medini  yotam.medini@gmail.com -- Created: 2018/March/17

TARGET = \
	01-kyrie-noten.midi \
	02-gloria-noten.midi \
	07-cum-sancto-noten.midi \
	08-credo-noten.midi \
	10a-et-resurrexit-noten.midi \
	10b-et-resurrexit-noten.midi \
	12-sanctus-noten.midi \
	14-agnus-dei-noten.midi

all: ${TARGET}

clean:
	rm -f ${TARGET}

01-kyrie-noten.midi: ../rossini-kyrie.mid
	midiconv.py -tv 3 0 0 $< $@

02-gloria-noten.midi: ../rossini-pms-02.mid
	midiconv.py -tv 3 0 0 $< $@

07-cum-sancto-noten.midi: ../rossini-cum-sancto.mid
	midiconv.py -tv 3 0 0 $< $@

08-credo-noten.midi: ../rossini-pms-08.mid
	midiconv.py -tv 3 0 0 $< $@

10a-et-resurrexit-noten.midi: ../rossini-pms10a.mid
	midiconv.py -tv 3 0 0 $< $@

10b-et-resurrexit-noten.midi: ../rossini-pms-10b.mid
	midiconv.py -tv 3 0 0 $< $@

12-sanctus-noten.midi: ../rossini-pms12.mid
	midiconv.py -tv 3 0 0 $< $@

14-agnus-dei-noten.midi: ../rossini-pms14.mid
	midiconv.py -tv 4 0 0 $< $@
