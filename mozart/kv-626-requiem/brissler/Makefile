# -*- Makefile -*-

ifneq ($(emv),)
emv:
	@echo $($(emv))
endif

.DELETE_ON_ERROR:

MANPAGESNUMS := $(shell seq -w 1 79)
MANUAL_JPEGS = $(foreach n, ${MANPAGESNUMS}, wp-${n}.jpeg)
MANUAL_PDFS = $(foreach n, ${MANPAGESNUMS}, wp-${n}.pdf)

$(MANUAL_PDFS): %.pdf: %.jpeg
	convert -quality 50 $< $@

manual-pdfs: ${MANUAL_PDFS}

cover-0003-s6c.pdf: cover-0003-s6c.jpeg
	convert -quality 50 $< $@

cover-center-a4.pdf:  cover-0003-s6c.pdf
	cpdf -scale-to-fit a4portrait $< -o $@

brissler-clean.pdf: cover-center-a4.pdf ${MANUAL_PDFS}
	cpdf cover-center-a4.pdf ${MANUAL_PDFS} -o $@
	pdfinfo $@; ls -lG $@

