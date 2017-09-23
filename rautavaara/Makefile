# Author:  Yotam Medini  yotam.medini@gmail.com -- Created: 2017/January/27

SPLIT_TARGETS = \
	1-Cancion_de_jinete.mp3 \
	2-El_Grito.mp3 \
	3-La_luna_asoma.mp3 \
	4-Malaguena.mp3

all: ${SPLIT_TARGETS}

# ${SPLIT_TARGETS}: suite-de-lorca.mp3
#	mp3splt suite-de-lorca.mp3 0.00,1.09,2.52,4.36,6.09 -d tmp

1-Cancion_de_jinete.mp3: suite-de-lorca.mp3
	mp3splt -d . -o $$(echo $@ | sed -e s/.mp3//) $< 0.01 1.04

2-El_Grito.mp3: suite-de-lorca.mp3
	mp3splt -d . -o $$(echo $@ | sed -e s/.mp3//) $< 1.10 2.52


3-La_luna_asoma.mp3: suite-de-lorca.mp3
	mp3splt -d . -o $$(echo $@ | sed -e s/.mp3//) $< 2.58 4.36

4-Malaguena.mp3: suite-de-lorca.mp3
	mp3splt -d . -o $$(echo $@ | sed -e s/.mp3//) $< 4.43 6.09


clean:
	rm -f ${SPLIT_TARGETS}
