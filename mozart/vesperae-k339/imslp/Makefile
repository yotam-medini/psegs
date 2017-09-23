BASE=IMSLP17529-Mozart_VesperaeConfessore_KV339
ORIGPDF=${BASE}.pdf
CLEANPDF=${BASE}-clean.pdf

all: ${CLEANPDF}

# 539.999 x 755.998 pts
LEFTBLANK=0,0,36,756
RIGHTBLANK=510,0,540,756
BOTTOMBLANK=510,0,540,30
TOPODDBLANK=0,720,470,756

${CLEANPDF}: ${ORIGPDF}
	pdfblank.py \
	  -rb 3:0,0,36,756 \
	  -rb 3:498,0,539,756 \
	  -rb 3:0,0,540,32 \
	  -rb 4:0,0,45,756 \
	  -rb 5:${LEFTBLANK} \
	  -rb 5:${RIGHTBLANK} \
	  -rb 6:${LEFTBLANK} \
	  -rb 6:${RIGHTBLANK} \
	  -rb 7:${LEFTBLANK} \
	  -rb 7:${RIGHTBLANK} \
	  -rb 8:${LEFTBLANK} \
	  -rb 10:${LEFTBLANK} \
	  -rb 12:${LEFTBLANK} \
	  -rb 14:${LEFTBLANK} \
	  -rb 16:${LEFTBLANK} \
	  -rb 18:${LEFTBLANK} \
	  -rb 20:${LEFTBLANK} \
	  -rb 22:${LEFTBLANK} \
	  -rb 24:${LEFTBLANK} \
	  -rb 26:${LEFTBLANK} \
	  -rb 28:${LEFTBLANK} \
	  -rb 30:${LEFTBLANK} \
	  -rb 32:${LEFTBLANK} \
	  -rb 34:${LEFTBLANK} \
	  -rb 36:${LEFTBLANK} \
	  -rb 38:${LEFTBLANK} \
	  -rb 39:${LEFTBLANK} \
	  -rb 39:${RIGHTBLANK} \
	  -rb 40:${LEFTBLANK} \
	  -rb 40:${RIGHTBLANK} \
	  -rb 40:${TOPODDBLANK} \
	  -rb 41:${LEFTBLANK} \
	  -rb 41:${RIGHTBLANK} \
	  -rb 42:${LEFTBLANK} \
	  -rb 42:${TOPODDBLANK} \
	  -rb 44:${LEFTBLANK} \
	  -rb 44:${TOPODDBLANK} \
	  -rb 45:${LEFTBLANK} \
	  -rb 45:${RIGHTBLANK} \
	  -rb 46:${LEFTBLANK} \
	  -rb 46:${TOPODDBLANK} \
	  -rb 47:${BOTTOMBLANK} \
	  -rb 48:${LEFTBLANK} \
	  -rb 48:${TOPODDBLANK} \
	  -rb 49:${LEFTBLANK} \
	  -rb 49:${BOTTOMBLANK} \
	  -rb 49:${BOTTOMBLANK} \
	  -rb 50:${LEFTBLANK} \
	  -rb 50:${TOPODDBLANK} \
	  -rb 51:${LEFTBLANK} \
	  -rb 51:${RIGHTBLANK} \
	  -rb 51:${BOTTOMBLANK} \
	  -rb 52:${LEFTBLANK} \
	  -rb 52:${TOPODDBLANK} \
	  -rb 53:${RIGHTBLANK} \
	  -rb 54:${LEFTBLANK} \
	  -rb 55:${RIGHTBLANK} \
	  -rb 55:${LEFTBLANK} \
	  ${ORIGPDF} $@
	  ls -lG ${ORIGPDF} ${CLEANPDF}

clean-pad.pdf: ${CLEANPDF}
	cpdf -pad-before $< 1 -o $@

mvt45.pdf: ${CLEANPDF}
	cpdf ${CLEANPDF} 39-55 -o mvt45-tmp.pdf
	cpdf -pad-before mvt45-tmp.pdf 1 -o $@

clean:
	rm -f ${CLEANPDF}
