# Author:  Yotam Medini  yotam.medini@gmail.com -- Created: 2016/July/02

NOTENS = \
	c12-noten.midi \
	c34-noten.midi \
	c5-noten.midi \
	c678-noten.midi \
	czena-noten.midi

all: ${NOTENS}

c12-noten.midi: braun-song-c12.mid
	midiconv.py -tv 3 0 0 -tv -1 1 0 $< $@

c34-noten.midi: braun-song-c34.mid
	midiconv.py -tv 3 0 0 -tv -1 1 0 $< $@

c5-noten.midi: braun-song-c5.mid
	midiconv.py -tv 3 0 0 -tv -1 1 0 $< $@

c678-noten.midi: braun-song-c678.mid
	midiconv.py -tv 3 0 0 -tv -1 1 0 $< $@

czena-noten.midi: braun-zena.mid
	midiconv.py -tv 3 0 0 -tv -1 1 0 $< $@

