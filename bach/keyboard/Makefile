# Author:  Yotam Medini  yotam.medini@gmail.com -- Created: 2016/September/03

ditson-clean.pdf: IMSLP322009-SIBLEY1802.28228.3c5b-39087032301162score.pdf
	mutool clean $< $@

bach-kbd-inventions-ditson-booklet.pdf: ditson-clean.pdf
	bookletimposer -o $@ -a -p 2x1 -f A3 $<
