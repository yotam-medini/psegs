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
