# Author:  Yotam Medini  yotam.medini@gmail.com -- Created: 2017/November/17

TARGET = \
	03-noten.midi \
	04-noten.midi \
	06-noten.midi \
	08-noten.midi \
	11-noten.midi

all: ${TARGET}

03-noten.midi: ../char-tedeum-03.mid
	midiconv.py -tv 9 0 0 $< $@

04-noten.midi: ../char-tedeum-04.mid
	midiconv.py -tv 6 0 0 $< $@

06-noten.midi: ../char-tedeum-06.mid
	midiconv.py -tv 6 0 0 $< $@

08-noten.midi: ../fix08/char-tedeum-08.midi
	midiconv.py -tv 6 0 0 $< $@

11-noten.midi: ../char-tedeum-11.mid
	midiconv.py -tv 8 0 0 $< $@

clean:
	rm -f ${TARGET}
