# Author:  Yotam Medini  yotam.medini@gmail.com -- Created: 2015/March/24

ORIGPDF = IMSLP162956-PMLP103908-Mendelssohn-Psalm_115_op.31-zg.kiv.pdf

all: mendelssohn-opus-31-4print.pdf

mendelssohn-opus-31.pdf: ${ORIGPDF} Makefile
	pdfblank.py \
	   -rb 3:0,0,20,767 \
	   -rb 4:535,0,561,767 \
	   -rb 4:0,804,595,813 \
	   -rb 5:0,0,20,767 \
	   -rb 5:10,40,0,10 \
	   -rb 5:10,775,40,813 \
	   -rb 6:0,0,561,10 \
	   -rb 6:530,0,561,767 \
	   -rb 7:0,0,30,767 \
	   -rb 7:20,800,50,813 \
	   -rb 9:0,0,30,767 \
	   -rb 10:530,0,561,767 \
	   -rb 11:0,0,30,767 \
	   -rb 11:20,750,70,813 \
	   -rb 12:530,0,561,767 \
	   -rb 13:0,0,30,767 \
	   -rb 14:530,0,561,767 \
	   -rb 15:0,0,30,767 \
	   -rb 15:20,800,100,813 \
	   -rb 16:530,0,561,767 \
	   -rb 17:0,0,30,767 \
	   -rb 17:20,800,50,813 \
	   -rb 18:530,0,561,767 \
	   -rb 19:0,0,30,767 \
	   -rb 19:20,0,40,10 \
	   -rb 20:529,0,561,767 \
	   -rb 21:0,0,30,767 \
	   -rb 22:525,0,561,767 \
	   -rb 23:0,0,35,767 \
	   -rb 23:20,800,70,813 \
	   -rb 24:525,0,561,767 \
	   -rb 25:0,0,35,767 \
	   ${ORIGPDF} $@

imp1w.pdf: imp1.pdf Makefile
	pdfblank.py \
	   -rb 1:0,0,45,828 \
	   -rb 1:520,0,595,828 \
	   -rb 1:0,0,595,140 \
	   -rb 1:0,790,595,828 \
	  $< $@


mendelssohn-opus-31-4print.pdf: imp1w.pdf mendelssohn-opus-31.pdf
	cpdf -o $@ imp1w.pdf mendelssohn-opus-31.pdf 2-end
