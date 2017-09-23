# -*- Makefile -*-
ROOT_URL = http://www.cyberbass.com
MAJOR_PFX = ${URL}/Major_Works
BACH_PFX = ${ROOT_URL}/Bach_Cantata_Project

SHELL = /bin/bash

MAJOR_HTMLS := $(shell cat major_htmls || true)
BACH_CANTATA_HTMLS := $(shell cat bach_cantata_htmls || true)
LOCAL_MAJOR_HTMLS := $(shell cat local_major_htmls || true)
WGETS := $(patsubst %.htm, %.sh, ${LOCAL_MAJOR_HTMLS})

HTMLS = \
	Major_Works.htm \
	bach_cantata_project_index.htm \
	${LOCAL_MAJOR_HTMLS}

.DELETE_ON_ERROR:
.PSEUDO: all htmls midis

ifneq ($(emv),)
emv:
	@echo $($(emv))
endif

all: htmls midis

htmls: ${HTMLS}

midis: ${MIDIS}

Major_Works.htm:
	wget -O $@ ${ROOT_URL}/Major_Works.htm

bach_cantata_project_index.htm:
	wget -O $@ ${BACH_PFX}/bach_cantata_project_index.htm

major_htmls: Major_Works.htm
	egrep 'href="Major_Works/.*htm"' $< | \
	tr -d '\200-\377' | \
	sed \
	  -e 's/^.*href="Major_Works/Major_Works/g' \
	  -e 's/.htm".*/.htm/g' | \
	sort -u > $@

bach_cantata_htmls: bach_cantata_project_index.htm
	egrep 'href="BWV.*htm"' $< | \
	tr -d '\200-\377' | \
	sed \
	  -e 's/^.*href="BWV/BWV/g' \
	  -e 's/.htm".*/.htm/g' | \
	sort -u > $@

SED_W2L = 's/%20G/___G/g' -e 's/&/__and__/g'
SED_L2W = 's/___G/%20G/g' -e 's/__and__/\&/g'

local_major_htmls: major_htmls
	sed -e 's/%20G/___G/g' -e 's/&/__and__/g' < $< > $@


${LOCAL_MAJOR_HTMLS}: %.htm:
	mkdir -p $(@D)
	(surl=$$(echo $@ | sed -e 's/___G/%20G/g' -e 's/__and__/\&/g'); \
	echo surl=$${surl}; \
	wget -O $@ "${ROOT_URL}/$${surl}")


${WGETS}: %.sh:
	(surl=$$(echo $@ | sed -e ${SED_L2W} -e 's/\.sh/.html/g'); \
	echo surl=$${surl}; \
	./genwgets.py $@ "${ROOT_URL}/$${surl}")
