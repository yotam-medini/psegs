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


la_anunciacion.pdf: ${LA_ANUNCIACION_PXXS}
	cpdf ${LA_ANUNCIACION_PXXS} -o $@

clean:
	rm -f blank.pdf p??.pdf p??w.pdf
