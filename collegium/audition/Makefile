# Author:  Yotam Medini  yotam.medini@gmail.com -- Created: 2015/October/02

giordani_caro-piano.mid : giordani_caro.mid
	midiconv.py -tv 1 0 0 $< $@

danza.midi: /home/yotam/lily.d/danza/danza.midi
	cp $< $@

danza-novoice.midi: danza.midi
	midiconv.py -tv 1 0 0 $< $@

midis: giordani_caro-piano.mid danza-novoice.midi

caro-100.wav: giordani_caro-piano.mid
	timidity -Ow -T 100 -o $@ $<

caro-110.wav: giordani_caro-piano.mid
	timidity -Ow -T 110 -o $@ $<

caro-120.wav: giordani_caro-piano.mid
	timidity -Ow -T 120 -o $@ $<

danza-100.wav: danza-novoice.midi
	timidity -Ow -T 100 -o $@ $<

danza-070.wav: danza-novoice.midi
	timidity -Ow -T 70 -o $@ $<

danza-090.wav: danza-novoice.midi
	timidity -Ow -T 90 -o $@ $<

wavs: \
	caro-100.wav \
	caro-110.wav \
	caro-120.wav \
	danza-100.wav \
	danza-070.wav \
	danza-090.wav


