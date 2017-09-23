# Add bar numbers

OLDPDF=IMSLP11870-Handel_Messiah_Schirmer_1912.pdf
NEWPDF=IMSLP11870-Handel_Messiah_Schirmer_1912-bars.pdf

${NEWPDF}: ${OLDPDF} bars.ann
	antpdf.py -i bars.ann ${OLDPDF} $@

bn: ${NEWPDF}

messiah-choir.pdf: ${NEWPDF} Makefile
	cpdf ${NEWPDF} 14-21,34-44,52-57,64-74,80-84,96-105,111-128,130-136,142-155,161-164,167-171,180-186,191-201,208-211,223-228,235-250 -o $@
