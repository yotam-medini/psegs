# Author:  Yotam Medini  yotam.medini@gmail.com -- Created: 2016/October/24

TARGET = \
	1-kyrie-noten.midi \
	2-gloria-noten.midi \
	3-credo-noten.midi \
	4-sanctus-noten.midi \
	5-agnusdei-noten.midi

all: ${TARGET}

1-kyrie-noten.midi:     ../ramirez-misacriolla-kyrie.mid    
	midiconv.py -tv 4 0 0 -tv -1 1 0 $< $@

2-gloria-noten.midi: 	../ramirez-misacriolla-gloria.mid   
	midiconv.py -tv 4 0 0 -tv -1 1 0 $< $@

3-credo-noten.midi: 	../ramirez-misacriolla-credo.mid    
	midiconv.py -tv 4 0 0 -tv -1 1 0 $< $@

4-sanctus-noten.midi: 	../ramirez-misacriolla-sanctus.mid 
	midiconv.py -tv 4 0 0 -tv -1 1 0 $< $@

5-agnusdei-noten.midi: 	../ramirez-misacriolla-agnusdei.mid  
	midiconv.py -tv 4 0 0 -tv -1 1 0 $< $@

clean:
	rm -f ${TARGET}
