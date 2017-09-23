TARGET = \
	01-GLORIA_noten.midi \
	02-ET_IN_TERRA_noten.midi \
	04-GRATIAS_noten.midi \
	05-PROPTER_noten.midi \
	07-DOMINEFILI_noten.midi \
	08-DOMINEAGNUS_noten.midi \
	09-QUITOLLIS_noten.midi \
	11-QUONIAM_noten.midi \
	12-CUMSANCTO_noten.midi

all: ${TARGET}

01-GLORIA_noten.midi:      ../vivaldi_gloria_01gloria.mid
	midiconv.py -tv 3 0 0 $< $@

02-ET_IN_TERRA_noten.midi: ../vivaldi_gloria_02et_in_terra.mid
	midiconv.py -tv 3 0 0 $< $@

04-GRATIAS_noten.midi:     ../vivaldi_gloria_04gratias.mid
	midiconv.py -tv 3 0 0 $< $@

05-PROPTER_noten.midi:     ../vivaldi_gloria_05_propter.mid
	midiconv.py -tv 3 0 0 $< $@

07-DOMINEFILI_noten.midi:  ../vivaldi_GLORIA_07DOMINEFILI.mid
	midiconv.py -tv 3 0 0 $< $@

08-DOMINEAGNUS_noten.midi: ../vivaldi_GLORIA_08DOMINEAGNUS.mid
	midiconv.py -tv 4 0 0 $< $@

09-QUITOLLIS_noten.midi:   ../vivaldi_GLORIA_09QUITOLLIS.mid
	midiconv.py -tv 3 0 0 $< $@

11-QUONIAM_noten.midi:     ../vivaldi_GLORIA_11QUONIAM.mid
	midiconv.py -tv 3 0 0 $< $@

12-CUMSANCTO_noten.midi:   ../vivaldi_GLORIA_12CumSancto.mid
	midiconv.py -tv 3 0 0 $< $@


clean:
	rm -f ${TARGET}
