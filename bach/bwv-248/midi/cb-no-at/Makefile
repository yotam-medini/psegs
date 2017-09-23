# Author:  Yotam Medini  yotam.medini@gmail.com -- Created: 2016/December/09

ifneq ($(emv),)
emv:
	@echo $($(emv))
endif

.DELETE_ON_ERROR:

NN := $(shell ls ../cb-short/ | cut -c-2 | sort -u)

TARGETS = $(foreach n, ${NN}, ${n}.midi)

all: ${TARGETS}

${TARGETS}: %.midi: ../cb-short/%.midi
	midiconv.py -tv 2 0 0 -tv 3 0 0 $< $@

clean:
	rm -f ${TARGETS}
