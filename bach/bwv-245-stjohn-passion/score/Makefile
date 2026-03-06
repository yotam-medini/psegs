orig = IMSLP28900-PMLP44395-Bach_-_Johannes_Passion__BVW245_-_vocal_score.pdf
choir = IMSLP28900-PMLP44395-choir.pdf

PYPDF_DIR = /home/yotam/pub/pyPdf-1.13
ANTPDF = PYTHONPATH=${PYPDF_DIR}: antpdf.py
ANTPDF = antpdf3.py

all: ${choir}

${choir}: ${orig} Makefile
	cpdf -o $@ ${orig} \
	1-15,17-19,21,38-40,46-53,55,57,68,69,71-96,98-107,113-117,127,129-136

bwv-245-breitkopf.pdf: IMSLP120846-PMLP03317-Bach_-_Johannespassion_VS_rsl.pdf
	cpdf -pad-after $< 1 -o $@

bwv-245-breitkopf-bars.pdf: bwv245-breitkopf.ann bwv-245-breitkopf.pdf
	${ANTPDF} -i bwv245-breitkopf.ann bwv-245-breitkopf.pdf $@

# ================================

# From Hadas 2026/March/05
PDF_ORIG = Bach-St.John_Passion-Barenreiter.pdf

PDF_BAREN_A4 = BWV-245-Barenreiter-A4.pdf
PDF_BAREN_A4_CHOIR = BWV-245-Barenreiter-A4-choir.pdf
PDF_BAREN_A4_SMALL = BWV-245-Barenreiter-A4-small.pdf
PDF_BAREN_A4_ALL = \
	$(PDF_BAREN_A4) $(PDF_BAREN_A4_CHOIR) $(PDF_BAREN_A4_SMALL)

# 	convert xc:white -page A4 -format pdf $@
# 	convert -size 595x842 xc:white -font Helvetica -pointsize 28 \
#           -fill black -gravity center -annotate 0 'Intentionally Blank Page' \
#            -page A4 blank.pdf
blank.pdf:
	convert -size 595x842 xc:white -font Helvetica -pointsize 28 \
	    -fill black -gravity center -annotate 0 'Intentionally Blank Page' \
	     -type TrueColor -compress JPEG -quality 90 -page A4 blank.pdf

#	cpdf ${PDF_ORIG} -pad-after 9 AND -scale-to-fit a4portrait -o $@
$(PDF_BAREN_A4) : $(PDF_ORIG) blank.pdf
	cpdf ${PDF_ORIG} 1-9 blank.pdf ${PDF_ORIG} 10-end \
	    AND -scale-to-fit a4portrait -o $@

a4: $(PDF_BAREN_A4_ALL)
	ls -lGt ${PDF_ORIG} $(PDF_BAREN_A4_ALL)

CHOIR_SELECTION = 1-41,50-66,73-98,111-150,161-182,187-196,209-217

$(PDF_BAREN_A4_CHOIR): $(PDF_BAREN_A4)
	cpdf -o $@ $(PDF_BAREN_A4) $(CHOIR_SELECTION)

# ChatGPT:
# pdfimages -j BWV-245-Barenreiter-A4-cpdf.pdf page
# mkdir recompressed
# for f in page-*.jpg; do convert "$f" -colorspace Gray -quality 35 "recompressed/$f"; done
# convert -density 186 recompressed/page-*.jpg small.pdf
# pdfinfo small.pdf | grep size

$(PDF_BAREN_A4_SMALL): $(PDF_BAREN_A4)
	rm -rf pages.d small.d
	mkdir -p pages.d small.d
	pdfimages -j $(PDF_BAREN_A4) pages.d/page
	for f in pages.d/page-*.jpg; do \
	    fb=$$(basename $${f}); \
	    convert $${f} \
	        -colorspace Gray \
	        -resize 1100x \
	        -sharpen 0x0.5 \
	        -quality 30 -compress JPEG \
	        small.d/$${fb}; \
	done
	img2pdf --pagesize A4 small.d/page-*.jpg -o $@
	ls -lGt $(PDF_BAREN_A4) $@
	echo skip rm -rf pages.d small.d
