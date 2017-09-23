# Author:  Yotam Medini  yotam.medini@gmail.com -- Created: 2016/November/20

la-palomita-4p.pdf: La-Palomita.pdf
	cpdf $< -pad-before 1 -o $@

la-palomita-a3.pdf: la-palomita-4p.pdf
	bookletimposer -o $@ -a -p 2x1 -f A3 $<
