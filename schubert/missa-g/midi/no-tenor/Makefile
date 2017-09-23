# Author:  Yotam Medini  yotam.medini@gmail.com -- Created: 2017/March/18

TARGET = \
	1-KYRIE-noten.midi \
	2-GLORIA-noten.midi \
	3-CREDO-noten.midi \
	4-SANCTUS-noten.midi \
	5-BENEDICTUS-noten.midi \
	6-AGNUSDEI-noten.midi

all: ${TARGET}

1-KYRIE-noten.midi: ../SCHUBERT_MASSG_01KYRIE.mid
	midiconv.py -tv 4 0 0 $< $@
2-GLORIA-noten.midi: ../Schubert_MassG_02gloria.mid
	midiconv.py -tv 5 0 0 $< $@
3-CREDO-noten.midi: ../Schubert_MassG_03Credo.mid
	midiconv.py -tv 3 0 0 $< $@
4-SANCTUS-noten.midi: ../Schubert_MassG_04Sanctus.mid
	midiconv.py -tv 3 0 0 $< $@
5-BENEDICTUS-noten.midi: ../SCHUBERT_MASSG_05Benedictus.mid
	midiconv.py -tv 5 0 0 $< $@
6-AGNUSDEI-noten.midi: ../SCHUBERT_MASSG_06AgnusDei.mid
	midiconv.py -tv 5 0 0 $< $@

clean:
	rm -f ${TARGET}


