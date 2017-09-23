# 2016/October/15

FULL=IMSLP249053-PMLP14118-Mozart-_Jym_-AveVerumCorpus_-_Conducteur.pdf
REDUCTION=IMSLP28882-PMLP14118-Ave_verum.pdf

e1-ave-verum.pdf: IMSLP28882-PMLP14118-Ave_verum.pdf
	cpdf -pad-before $< 1 -o $@

title-ave-verum.pdf: ${FULL} ${REDUCTION}
	cpdf ${FULL} 1 ${REDUCTION} -o $@

ave-verum-a3.pdf: title-ave-verum.pdf
	bookletimposer -o $@ -a -p 2x1 -f A3 $<
