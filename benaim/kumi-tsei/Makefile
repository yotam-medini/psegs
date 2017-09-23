# Author:  Yotam Medini  yotam.medini@gmail.com -- Created: 2016/June/24

# -addoffs not working well

kumi-tsei-ten.midi: kumi-tsei-ten.mid Makefile
	midiconv.py $< $@

kumi-tsei-noten.midi: kumi-tsei.mid Makefile
	midiconv.py -tv 3 0 0 -tv -1 1 0 $< $@
