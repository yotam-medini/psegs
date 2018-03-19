# Author:  Yotam Medini  yotam.medini@gmail.com -- Created: 2017/November/17

TARGET = \
	03-noten.midi \
	06-noten.midi \
	09-noten.midi \
	14-noten.midi \
	18-noten.midi \
	20-noten.midi \
	24-noten.midi \
	25-noten.midi \
	27-noten.midi \
	28-noten.midi

all: ${TARGET}

03-noten.midi: ../handel-AF03.mid
	midiconv.py -tv 5 0 0 $< $@

06-noten.midi: ../handel-AF06.mid
	midiconv.py -tv 4 0 0 -tv 5 0 0 $< $@

09-noten.midi: ../handel-AF09.mid
	midiconv.py -tv 2 0 0 $< $@

14-noten.midi: ../handel-AF14.mid
	midiconv.py -tv 3 0 0 $< $@

18-noten.midi: ../handel-AF18.mid
	midiconv.py -tv 3 0 0 $< $@

20-noten.midi: ../handel-AF20.mid
	midiconv.py -tv 4 0 0 $< $@

24-noten.midi: ../handel-AF24.mid
	midiconv.py -tv 3 0 0 $< $@

25-noten.midi: ../handel-AF25.mid
	midiconv.py -tv 3 0 0 $< $@

27-noten.midi: ../handel-AF27.mid
	midiconv.py -tv 7 0 0 $< $@

28-noten.midi: ../handel-AF28.mid
	midiconv.py -tv 3 0 0 $< $@

clean:
	rm -f ${TARGET}


