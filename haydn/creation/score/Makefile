# 2016/June/10

IMSLP_FN = IMSLP35013-PMLP40341-Haydn-SchoepfungVSpeters.pdf

haydn-creation-bars.pdf: ${IMSLP_FN} creation.ann Makefile
	antpdf.py -i creation.ann $< $@


haydn-creation-bind.pdf: haydn-creation-bars.pdf \
	Makefile
	cpdf -shift "-15 15" $< even -stdout | \
	cpdf -shift "15 15" -stdin odd -o $@


haydn-creation-30.pdf: haydn-creation-bind.pdf
	cpdf $< 112-133 -o $@


haydn-creation-30-padded.pdf: haydn-creation-30.pdf
	cpdf -pad-after $< 22 -stdout | \
	cpdf -pad-before -stdin 1 -o $@

haydn-creation-30-booklet.pdf: haydn-creation-30-padded.pdf
	bookletimposer -o $@ -a -p 2x1 -f A3 $<
