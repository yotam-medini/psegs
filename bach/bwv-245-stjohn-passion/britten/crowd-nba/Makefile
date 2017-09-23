# Author:  Yotam Medini  yotam.medini@gmail.com -- Created: 2015/February/24

TARGETS = \
	02b.mp3 \
	02d.mp3 \
	12b.mp3 \
	16b.mp3 \
	16d.mp3 \
	18b.mp3 \
	21b.mp3 \
	21d.mp3 \
	21f.mp3 \
	23b.mp3 \
	23d.mp3 \
	23f.mp3 \
	25b.mp3 \
	27b.mp3

all: ${TARGETS}

02b.mp3: $(wildcard ../02-*.mp3) 
	mp3splt -d . -o $$(echo $@ | sed -e s/.mp3//) $< 1.14.20 1.27

02d.mp3:  $(wildcard ../02-*.mp3)
	mp3splt -d . -o $$(echo $@ | sed -e s/.mp3//) $< 2.13 2.26


12b.mp3: $(wildcard ../12-*.mp3)
	mp3splt -d . -o $$(echo $@ | sed -e s/.mp3//) $< 0.21.22 0.44.11

16b.mp3: $(wildcard ../16-*.mp3)
	mp3splt -d . -o $$(echo $@ | sed -e s/.mp3//) $< 0.40 1.53.44

16d.mp3: $(wildcard ../16-*.mp3)
	mp3splt -d . -o $$(echo $@ | sed -e s/.mp3//) $< 2.07.11 2.51.88

18b.mp3: $(wildcard ../18-*.mp3)
	mp3splt -d . -o $$(echo $@ | sed -e s/.mp3//) $< 1.34.88 1.46.66

21b.mp3: $(wildcard ../21-*.mp3)
	mp3splt -d . -o $$(echo $@ | sed -e s/.mp3//) $< 0.19 1.00.22

21d.mp3: $(wildcard ../21-*.mp3)
	mp3splt -d . -o $$(echo $@ | sed -e s/.mp3//) $< 2.20.22 3.16.55

21f.mp3: $(wildcard ../21-*.mp3)
	mp3splt -d . -o $$(echo $@ | sed -e s/.mp3//) $< 3.37.33 5.14

23b.mp3: $(wildcard ../23-*.mp3)
	mp3splt -d . -o $$(echo $@ | sed -e s/.mp3//) $< 0.05.22 1.20.55

23d.mp3: $(wildcard ../23-*.mp3)
	mp3splt -d . -o $$(echo $@ | sed -e s/.mp3//) $< 2.10.22 3.12.88

23f.mp3: $(wildcard ../23-*.mp3)
	mp3splt -d . -o $$(echo $@ | sed -e s/.mp3//) $< 3.26.71 3.38.22

25b.mp3: $(wildcard ../25-*.mp3)
	mp3splt -d . -o $$(echo $@ | sed -e s/.mp3//) $< 1.35 2.15

27b.mp3: $(wildcard ../27-*.mp3)
	mp3splt -d . -o $$(echo $@ | sed -e s/.mp3//) $< 0.36 2.17.55

clean:
	rm -f ${TARGETS}
