#

TARGET = \
	05_REX_noten.midi \
	08a_AMEN_noten.midi \
	08_LACRIMOSA_noten.midi \
	09_DOMINE_JESU_noten.midi \
	11_SANCTUS_noten.midi \
	12_benedictus_noten.midi \
	13_AGNUS_DEI_noten.midi \
	14A_CUM_SANCTIS_noten.midi \
	14_LUX_AETERNA_noten.midi

all: ${TARGET}

clean:
	rm -f ${TARGET}

05_REX_noten.midi: ../MOZART_REQ_05_Levin_REX.mid
	midiconv.py -tv 3 0 0 $< $@

08a_AMEN_noten.midi: ../Mozart_Req_08a_Levin_Amen.mid
	midiconv.py -tv 3 0 0 $< $@

08_LACRIMOSA_noten.midi: ../MOZART_REQ_08_Levin_LACRIMOSA.mid
	midiconv.py -tv 3 0 0 $< $@

09_DOMINE_JESU_noten.midi: ../MOZART_REQ_09_Levin_DOMINE_JESU.mid
	midiconv.py -tv 3 0 0 $< $@

11_SANCTUS_noten.midi: ../Mozart_Req_11_Levin_sanctus.mid
	midiconv.py -tv 3 0 0 $< $@

12_benedictus_noten.midi: ../Mozart_Req_12_Levin_benedictus.mid
	midiconv.py -tv 3 0 0 $< $@

13_AGNUS_DEI_noten.midi: ../Mozart_Req_13_Levin_Agnus_Dei.mid
	midiconv.py -tv 3 0 0 $< $@

14A_CUM_SANCTIS_noten.midi: ../MOZART_REQ_14a_Levin_CUM_SANCTIS.mid
	midiconv.py -tv 3 0 0 $< $@

14_LUX_AETERNA_noten.midi: ../MOZART_REQ_14_Levin_Lux_aeterna.mid
	midiconv.py -tv 4 0 0 $< $@
