TARGET = \
	1-kyrie-noten.midi \
	2-gloria-noten.midi \
	3-credo1-noten.midi \
	3-credo2-noten.midi \
	3-credo3-noten.midi \
	3-credo4-noten.midi \
	4-sanctus1-noten.midi \
	4-sanctus2-noten.midi \
	5-benedictus1-noten.midi \
	5-benedictus2-noten.midi \
	6-agnusdei1-noten.midi \
	6-agnusdei2-noten.midi \
	6-agnusdei3-noten.midi

all: ${TARGET}

clean:
	rm -f ${TARGET}

1-kyrie-noten.midi : ../palmeri-misatango-kyrie.mid
	midiconv.py -tv 3 0 0 $< $@

2-gloria-noten.midi : ../palmeri-misatango-gloria.mid 
	midiconv.py -tv 4 0 0 $< $@

3-credo1-noten.midi : ../palmeri-misatango-credo1.mid 
	midiconv.py -tv 3 0 0 $< $@

3-credo2-noten.midi : ../palmeri-misatango-credo2.mid 
	midiconv.py -tv 4 0 0 $< $@

3-credo3-noten.midi : ../palmeri-misatango-credo3.mid 
	midiconv.py -tv 3 0 0 $< $@

3-credo4-noten.midi : ../palmeri-misatango-credo4.mid 
	midiconv.py -tv 3 0 0 $< $@

4-sanctus1-noten.midi : ../palmeri-misatango-sanctus1.mid 
	midiconv.py -tv 3 0 0 $< $@

4-sanctus2-noten.midi : ../palmeri-misatango-sanctus2.mid 
	midiconv.py -tv 3 0 0 $< $@

5-benedictus1-noten.midi : ../palmeri-misatango-benedictus1.mid 
	midiconv.py -tv 3 0 0 $< $@

5-benedictus2-noten.midi : ../palmeri-misatango-benedictus2.mid 
	midiconv.py -tv 3 0 0 $< $@

6-agnusdei1-noten.midi : ../palmeri-misatango-agnusdei1.mid 
	midiconv.py -tv 3 0 0 $< $@

6-agnusdei2-noten.midi : ../palmeri-misatango-agnusdei2.mid 
	midiconv.py -tv 3 0 0 $< $@

6-agnusdei3-noten.midi : ../palmeri-misatango-agnusdei3.mid 
	midiconv.py -tv 3 0 0 $< $@

