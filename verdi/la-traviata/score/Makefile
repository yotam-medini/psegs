# Author:  Yotam Medini  yotam.medini@gmail.com -- Created: 2014/May/05

.DELETE_ON_ERROR:

choir.pdf: CD-sheet-music-verdi-la-traviata.pdf
	pdf2pdf.py 5-40,51-65,138-221 $< $@

2.pdf: choir.pdf
	cpdf $< 1,2 -o $@

## 2-a4.pdf: 2.pdf Makefile
## 	cpdf -remove-crop $< -o /tmp/t1.pdf
## 	cpdf -mediabox "0pt 0pt 518pt 701.04pt" /tmp/t1.pdf -o /tmp/t2.pdf
## 	cpdf -shift "48 0" /tmp/t2.pdf odd -o /tmp/t3.pdf
## 	cpdf -shift "2 0" /tmp/t3.pdf even -o /tmp/t4.pdf
## 	cpdf -scale-to-fit a4portrait /tmp/t4.pdf -o $@

%-a4.pdf: %.pdf Makefile
	cpdf -remove-crop $< -o /tmp/t1.pdf
	cpdf -mediabox "0pt 0pt 518pt 701.04pt" /tmp/t1.pdf -o /tmp/t2.pdf
	cpdf -shift "48 0" /tmp/t2.pdf odd -o /tmp/t3.pdf
	cpdf -shift "2 0" /tmp/t3.pdf even -o /tmp/t4.pdf
	cpdf -scale-to-fit a4portrait /tmp/t4.pdf -o $@
