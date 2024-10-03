ifneq ($(emv),)
emv:
	@echo $($(emv))
endif

.DELETE_ON_ERROR:

# 595.276 x 841.89 pts (A4)

PAGES = 08 09 11 12 13 14 16 17 18 22 24 26 28 29 \
  36 38 39 43 44 45 46 47 48 49 50 51 52 53

TARGET = $(foreach pn, ${PAGES} , clean-singles.d/p${pn}.pdf)

clean-singles: ${TARGET}

clean-singles.d/p08.pdf: singles.d/p08.pdf
	cpdf $< 1 -stdout | \
	cpdf -stdin -add-rectangle "595 22" -pos-left "0 820" \
	  -color white -stdout | \
	cpdf -stdin -add-rectangle "10 50" -pos-left "585 790" \
	  -color white -o $@

clean-singles.d/p09.pdf: singles.d/p09.pdf
	cpdf $< -add-rectangle "595 22" -pos-left "0 822" \
	  -color white -o $@

clean-singles.d/p11.pdf: singles.d/p11.pdf
	cpdf $< -add-rectangle "595 20" -pos-left "0 822" \
	  -color white -o $@

clean-singles.d/p12.pdf: singles.d/p12.pdf
	cpdf $< 1 -stdout | \
	cpdf -stdin -add-rectangle "595 22" -pos-left "0 820" \
	  -color white -stdout | \
	cpdf -stdin -add-rectangle "10 142" -pos-left "585 700" \
	  -color white -o $@

clean-singles.d/p13.pdf: singles.d/p13.pdf
	cpdf $< -add-rectangle "595 20" -pos-left "0 822" \
	  -color white -o $@

clean-singles.d/p14.pdf: singles.d/p14.pdf
	cpdf $< 1 -stdout | \
	cpdf -stdin -add-rectangle "595 20" -pos-left "0 822" \
	  -color white -stdout | \
	cpdf -stdin -add-rectangle "595 20" -pos-left "0 0" \
	  -color white -o $@

clean-singles.d/p16.pdf: singles.d/p16.pdf
	cpdf $< 1 -stdout | \
	cpdf -stdin -add-rectangle "595 20" -pos-left "0 822" \
	  -color white -stdout | \
	cpdf -stdin -add-rectangle "595 20" -pos-left "0 0" \
	  -color white -o $@

clean-singles.d/p17.pdf: singles.d/p17.pdf
	cpdf $< -add-rectangle "300 40" -pos-left "10 822" \
	  -color white -o $@

clean-singles.d/p18.pdf: singles.d/p18.pdf
	cpdf $< -add-rectangle "10 101" -pos-left "580 740" \
	  -color white -o $@

clean-singles.d/p22.pdf: singles.d/p22.pdf
	cpdf $< -add-rectangle "10 101" -pos-left "580 740" \
	  -color white -o $@

clean-singles.d/p24.pdf: singles.d/p24.pdf
	cpdf $< 1 -stdout | \
	cpdf -stdin -add-rectangle "10 101" -pos-left "580 740" \
	  -color white -stdout | \
	cpdf -stdin -add-rectangle "595 20" -pos-left "10 0" \
	  -color white -o $@

clean-singles.d/p26.pdf: singles.d/p26.pdf
	cpdf $< 1 -stdout | \
	cpdf -stdin -add-rectangle "10 101" -pos-left "580 740" \
	  -color white -stdout | \
	cpdf -stdin -add-rectangle "595 20" -pos-left "10 0" \
	  -color white -o $@

clean-singles.d/p28.pdf: singles.d/p28.pdf
	cpdf $< -add-rectangle "20 800" -pos-left "575 20" \
	  -color white -o $@

clean-singles.d/p29.pdf: singles.d/p29.pdf
	cpdf $< -add-rectangle "20 800" -pos-left "575 20" \
	  -color white -o $@

#	cpdf scr/4021100x-30.pdf -crop "0 610 595 842" -o scr/top_half.pdf
clean-singles.d/p30.pdf: Makefile 4021100x.pdf singles.d/p30.pdf
	rm -rf scr
	mkdir -p scr
	cpdf 4021100x.pdf 30 -o scr/4021100x-30.pdf
	cpdf scr/4021100x-30.pdf -add-rectangle "595 612" -pos-left "0 0" \
	  -color white -o scr/top.pdf
	cpdf singles.d/p30.pdf -add-rectangle "595 321" -pos-left "0 612" \
	  -color white -o scr/bottom.pdf
	cpdf scr/4021100x-30.pdf -cropbox "0 612 595pt 320pt" -o scr/t-crop.pdf
	cpdf singles.d/p30.pdf -cropbox "0 0 595pt 612" -o scr/b-crop.pdf
	gm convert -density 600 scr/t-crop.pdf -quality 100 scr/t-crop.png
	gm convert -density 600 scr/b-crop.pdf -quality 100 scr/b-crop.png
	pngcomb -i scr/t-crop.png -i scr/b-crop.png+10+0 -o scr/tb.png
	gm convert -density 600 -page A4 scr/tb.png $@

clean-singles.d/p36.pdf: singles.d/p36.pdf
	cpdf $< 1 -stdout | \
	cpdf -stdin -add-rectangle "16 600" -pos-left "580 0" \
	  -color white -stdout | \
	cpdf -stdin -add-rectangle "596 12" -pos-left "0 831" \
	  -color white -o $@

clean-singles.d/p38.pdf: singles.d/p38.pdf
	cpdf $< 1 -stdout | \
	cpdf -stdin -add-rectangle "16 600" -pos-left "580 10" \
	  -color white -stdout | \
	cpdf -stdin -add-rectangle "596 12" -pos-left "10 831" \
	  -color white -o $@

clean-singles.d/p39.pdf: singles.d/p39.pdf
	cpdf $< -add-rectangle "595 20" -pos-left "0 822" \
	  -color white -o $@

clean-singles.d/p43.pdf: singles.d/p43.pdf
	cpdf $< -add-rectangle "595 20" -pos-left "0 822" \
	  -color white -o $@

clean-singles.d/p44.pdf: singles.d/p44.pdf
	cpdf $< -add-rectangle "500 20" -pos-left "100 830" \
	  -color white -o $@

clean-singles.d/p45.pdf: singles.d/p45.pdf
	cpdf $< -add-rectangle "30 51" -pos-left "575 790" \
	  -color white -o $@

clean-singles.d/p46.pdf: singles.d/p46.pdf
	cpdf $< 1 -stdout | \
	cpdf -stdin $< -add-rectangle "25 842" -pos-left "571 0" \
	  -color white -stdout | \
	cpdf -stdin -add-rectangle "500 20" -pos-left "100 830" \
	  -color white -o $@

clean-singles.d/p47.pdf: singles.d/p47.pdf
	cpdf $< 1 -stdout | \
	cpdf -stdin -add-rectangle "30 70" -pos-left "575 771" \
	  -color white -stdout | \
	cpdf -stdin -add-rectangle "595 20" -pos-left "0 822" \
	  -color white -o $@

clean-singles.d/p48.pdf: singles.d/p48.pdf
	cpdf $< -add-rectangle "30 842" -pos-left "570 0" \
	  -color white -o $@

clean-singles.d/p49.pdf: singles.d/p49.pdf
	cpdf $< -add-rectangle "30 800" -pos-left "575 42" \
	  -color white -o $@

clean-singles.d/p50.pdf: singles.d/p50.pdf
	cpdf $< -add-rectangle "30 842" -pos-left "570 0" \
	  -color white -o $@

clean-singles.d/p51.pdf: singles.d/p51.pdf
	cpdf $< -add-rectangle "40 800" -pos-left "565 42" \
	  -color white -o $@

clean-singles.d/p52.pdf: singles.d/p52.pdf
	cpdf $< 1 -stdout | \
	cpdf -stdin -add-rectangle "30 842" -pos-left "570 0" \
	  -color white -stdout | \
	cpdf -stdin -add-rectangle "595 11" -pos-left "0 830" \
	  -color white -o $@

clean-singles.d/p53.pdf: singles.d/p53.pdf
	cpdf $< -add-rectangle "30 842" -pos-left "570 0" \
	  -color white -o $@


