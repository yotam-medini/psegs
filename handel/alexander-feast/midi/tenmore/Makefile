TARGETS = \
	03-ten.midi \
	06-ten2.midi \
	09-ten.midi \
	14-ten.midi \
	18-ten.midi \
	20-ten.midi \
	24-ten.midi \
	25-ten.midi \
	27-ten.midi \
	28-ten.midi

all: ${TARGETS}

clean:
	rm -f ${TARGETS}

03-ten.midi: ../tenor/03-ten.midi
	midiconv.py -tv 5 1.2 20 -tv 3 0.4 0 -tv 2 0.4 0 -tv 6 0.5 0 -tv -1 0.5 0 $< $@

06-ten2.midi: ../tenor/06-ten2.midi
	midiconv.py -tv 5 1.2 10 \
	  -tv 7 0.8 0 -tv 8 0.8 0 -tv 9 0.8 0 -tv 10 0.8 0 $< $@

09-ten.midi: ../tenor/09-ten.midi
	cp $< $@

14-ten.midi: ../tenor/14-ten.midi
	midiconv.py -tv 3 1.2 10 -tv 4 0.5 0 -tv -1 0.7 0 $< $@

18-ten.midi: ../tenor/18-ten.midi
	midiconv.py -tv 3 3 20 -tv 1 0.2 0 -tv 4 0.2 0 -tv -1 0.5 0 $< $@

20-ten.midi: ../tenor/20-ten.midi
	cp $< $@

24-ten.midi: ../tenor/24-ten.midi
	cp $< $@

25-ten.midi: ../tenor/25-ten.midi
	cp $< $@

27-ten.midi: ../tenor/27-ten.midi
	cp $< $@

28-ten.midi: ../tenor/28-ten.midi
	midiconv.py -tv 3 3 10 -tv 1 0.5 0 -tv 4 0.2 0 \
	  -tv 5 0.6 0 -tv 6 0.6 0 -tv 7 0.6 0 -tv 8 0.6 0 $< $@


