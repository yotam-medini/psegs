# -*- Makefile -*-

ifneq ($(emv),)
emv:
	@echo $($(emv))
endif

.DELETE_ON_ERROR:

MANUAL_PAGES = wcover wincover wp02 wp04 wp09 wp10 wp40 wp41
MANUAL_PDFS = $(foreach b, $(MANUAL_PAGES), $(b).pdf)

$(MANUAL_PDFS): %.pdf: %.jpeg
	convert -quality 50 $< $@

w0.pdf: orig.pdf ${MANUAL_PDFS}
	cpdf \
	wcover.pdf wincover.pdf \
	wp02.pdf \
	orig.pdf 4 \
	wp04.pdf \
	orig.pdf 6-9 \
	wp09.pdf wp10.pdf \
	orig.pdf 12-40 \
	wp40.pdf wp41.pdf \
	orig.pdf 43-end \
	-o $@

fix.pdf: w0.pdf
	cpdf -pad-after $< 2 -o $@

FSZ= -font-size 9

fix-barnums.pdf: fix.pdf
	cat $< | \
	cpdf -add-text "4" ${FSZ} -pos-center "30 530" -stdin 4 -stdout | \
	cpdf -add-text "7" ${FSZ} -pos-center "30 420" -stdin 4 -stdout | \
	> $@







