# Author:  Yotam Medini  yotam.medini@gmail.com -- Created: 2024/June/05

.DELETE_ON_ERROR:

ORIG=AR-NN.pdf
# Page size:       612 x 792 pts (letter)

# 	echo .bp | groff -T pdf > $@
empty.pdf:
	mutool create -o empty.pdf /dev/null

p04w.pdf:
	cpdf ${ORIG} 5 -stdout | \
	cpdf -stdin -add-rectangle "20 792" -pos-left "540 0" \
	  -color white -o $@
#  200 1450
p04.pdf: p04w.pdf
	pdf-crop.sh $< $@ 1120 1450 140 120

p05w.pdf:
	cpdf ${ORIG} 6 -stdout | \
	cpdf -stdin -add-rectangle "20 792" -pos-left "60 0" \
	  -color white -o $@
p05.pdf: p05w.pdf
	pdf-crop.sh $< $@ 1050 1551 70 50

p06w.pdf:
	cpdf ${ORIG} 7 -stdout | \
	cpdf -stdin -add-rectangle "20 792" -pos-left "530 0" \
	  -color white -o $@
p06.pdf: p06w.pdf
	pdf-crop.sh $< $@ 900 1380 260 120

p07w.pdf:
	cpdf ${ORIG} 8 -stdout | \
	cpdf -stdin -add-rectangle "20 792" -pos-left "60 0" \
	  -color white -o $@
p07.pdf: p07w.pdf
	pdf-crop.sh $< $@ 1050 1551 70 50

p08w.pdf:
	cpdf ${ORIG} 9 -stdout | \
	cpdf -stdin -add-rectangle "20 792" -pos-left "530 0" \
	  -color white -o $@
p08.pdf: p08w.pdf
	pdf-crop.sh $< $@ 1100 1450 110 80

p09w.pdf:
	cpdf ${ORIG} 10 -stdout | \
	cpdf -stdin -add-rectangle "20 792" -pos-left "60 0" \
	  -color white -o $@
p09.pdf: p09w.pdf
	pdf-crop.sh $< $@ 1050 1551 70 50

p10w.pdf:
	cpdf ${ORIG} 11 -stdout | \
	cpdf -stdin \
	  -add-rectangle "20 792" -pos-left "520 0" -color white -stdout | \
	cpdf -add-rectangle "612 10" -pos-left "0 385" \
	  -color white -stdin -stdout | \
	cpdf -add-rectangle "612 10" -pos-left "0 685" -color white -stdin \
	  -o $@
p10.pdf: p10w.pdf
	pdf-crop.sh $< $@ 1000 1400 180 100


p11w.pdf:
	cpdf ${ORIG} 12 -stdout | \
	cpdf -stdin -add-rectangle "20 792" -pos-left "70 0" \
	  -color white -o $@
p11.pdf: p11w.pdf
	pdf-crop.sh $< $@ 1000 1350 120 80

LA_ANUNCIACION_PXXS = empty.pdf \
	p04.pdf p05.pdf p06.pdf p07.pdf p08.pdf p09.pdf p10.pdf p11.pdf

########################################################################

p20w.pdf:
	cpdf ${ORIG} 21 -stdout | \
	cpdf -stdin -add-rectangle "20 792" -pos-left "420 0" \
	  -color white -o $@
p20.pdf: p20w.pdf
	pdf-crop.sh $< $@ 1275 1651 0 0


p21w.pdf:
	cpdf ${ORIG} 22 -stdout | \
	cpdf -stdin -add-rectangle "20 792" -pos-left "20 0" \
	  -color white -o $@
p21.pdf: p21w.pdf
	pdf-crop.sh $< $@ 1275 1651 0 0

p22w.pdf:
	cpdf ${ORIG} 23 -stdout | \
	cpdf -stdin -add-rectangle "20 792" -pos-left "430 0" \
	  -color white -o $@
p22.pdf: p22w.pdf
	pdf-crop.sh $< $@ 1275 1651 0 0


p23w.pdf:
	cpdf ${ORIG} 24 -stdout | \
	cpdf -stdin -add-rectangle "20 792" -pos-left "10 0" \
	  -color white -o $@
p23.pdf: p23w.pdf
	pdf-crop.sh $< $@ 1275 1651 0 0

p24w.pdf:
	cpdf ${ORIG} 25 -stdout | \
	cpdf -stdin -add-rectangle "30 792" -pos-left "430 0" \
	  -color white -o $@
p24.pdf: p24w.pdf
	pdf-crop.sh $< $@ 1275 1651 0 0


p25w.pdf:
	cpdf ${ORIG} 26 -stdout | \
	cpdf -stdin -add-rectangle "22 792" -pos-left "0 0" \
	  -color white -o $@
p25.pdf: p25w.pdf
	pdf-crop.sh $< $@ 1275 1651 0 0

p26w.pdf:
	cpdf ${ORIG} 27 -stdout | \
	cpdf -stdin -add-rectangle "20 792" -pos-left "430 0" \
	  -color white -o $@
p26.pdf: p26w.pdf
	pdf-crop.sh $< $@ 1275 1651 0 0

p27w.pdf:
	cpdf ${ORIG} 28 -stdout | \
	cpdf -stdin -add-rectangle "30 792" -pos-left "0 0" \
	  -color white -o $@
p27.pdf: p27w.pdf
	pdf-crop.sh $< $@ 1275 1651 0 0

p28w.pdf:
	cpdf ${ORIG} 29 -stdout | \
	cpdf -stdin -add-rectangle "20 792" -pos-left "430 0" \
	  -color white -o $@
p28.pdf: p28w.pdf
	pdf-crop.sh $< scr.pdf 1275 1651 0 0
	cpdf -shift "-4mm 0mm" scr.pdf -o $@

# pdf-crop.sh $< $@ 1275 1651 0 0


la_anunciacion.pdf: ${LA_ANUNCIACION_PXXS}
	cpdf ${LA_ANUNCIACION_PXXS} -o $@

LAS_PASTORES_PXXS = empty.pdf \
	p20.pdf p21.pdf p22.pdf p23.pdf p24.pdf p25.pdf p26.pdf p27.pdf p28.pdf


las_pastores.pdf: ${LAS_PASTORES_PXXS}
	cpdf ${LAS_PASTORES_PXXS} -o $@


clean:
	rm -f blank.pdf p??.pdf p??w.pdf
