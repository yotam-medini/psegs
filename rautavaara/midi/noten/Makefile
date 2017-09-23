TARGET = \
	a-noten.midi \
	b-noten.midi \
	c-noten.midi \
	d-noten.midi

all: ${TARGET}

a-noten.midi: ../rautavaara-op72a.mid
	midiconv.py -tv 5 0 0 -tv 6 0 0 $< $@

b-noten.midi: ../rautavaara-op72b.mid
	midiconv.py -tv 5 0 0 -tv 6 0 0 $< $@

c-noten.midi: ../rautavaara-op72c.mid
	midiconv.py -tv 5 0 0 $< $@

d-noten.midi: ../rautavaara-op72d.mid
	midiconv.py -tv 5 0 0  -tv 6 0 0 $< $@

clean:
	rm -f ${TARGET}
