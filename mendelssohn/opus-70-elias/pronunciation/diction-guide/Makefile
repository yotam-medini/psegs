# -*- Makefile -*-

ifneq ($(emv),)
emv:
	@echo $($(emv))
endif

.DELETE_ON_ERROR:


s1.watch: s1.html Makefile
	grep /watch $< | sed -e 's:^.*/watch?::g' -e 's/&amp.*//g' > $@


s1.nn: s1.html Makefile
	grep data-video-title= $< | grep op.70 | \
	    sed -e 's/^.*Elias.*op.70 no.//g' -e 's/ - .*//g' > $@

ut2mp3.sh: wut2mp3.py s1.watch s1.nn Makefile 
	./wut2mp3.py > $@
	chmod +x $@
	ls -lG $@



