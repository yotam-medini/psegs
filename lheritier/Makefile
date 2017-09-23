# Author:  Yotam Medini  yotam.medini@gmail.com -- Created: 2016/June/20

LHeritier-Nigra_sum_sed_formosa-bind.pdf: LHeritier-Nigra_sum_sed_formosa2.pdf \
	Makefile
	cpdf -shift "-5 15" $< even -stdout | \
	cpdf -shift "5 15" -stdin odd -o $@

LHeritier-Nigra_sum_sed_formosa-a3.pdf: LHeritier-Nigra_sum_sed_formosa-bind.pdf
	bookletimposer -o $@ -a -p 2x1 -f A3 $<

lheritier-nigra-sum-noten1.midi: lheritier-nigra-sum.mid
	midiconv.py -tv 3 0 0 -tv -1 1 0 $< $@
