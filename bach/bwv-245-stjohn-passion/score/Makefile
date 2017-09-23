orig = IMSLP28900-PMLP44395-Bach_-_Johannes_Passion__BVW245_-_vocal_score.pdf
choir = IMSLP28900-PMLP44395-choir.pdf

all: ${choir}

${choir}: ${orig} Makefile
	cpdf -o $@ ${orig} \
	1-15,17-19,21,38-40,46-53,55,57,68,69,71-96,98-107,113-117,127,129-136
