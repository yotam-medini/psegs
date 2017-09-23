# Author:  Yotam Medini  yotam.medini@gmail.com -- Created: 2015/October/12

TARGET_COMMON = \
	01_REDE_MAEDCHEN.midi \
	02_AM_GESTEINE.midi \
	05_GRUENE_HOPFENRANKE.midi \
	06_HUEBSCHER_VOGEL.midi \
	08_WENN_SO_LIND.midi \
	09_AM_DONAUSTRANDE.midi \
	10_O_WIE_SANFT.midi \
	11_NEIN_ES_IST_NICHT.midi \
	12_SCHLOSSER_AUF.midi \
	15_NACHTIGALL.midi \
	16_EIN_DUNKLER_SCHACHT.midi \
	18_ES_BEBET.midi

TARGET_SPECIAL = \
	03_O_DIE_FRAUEN.midi \
	14_SIEH_WIE_IST.midi \
	17_NICHT_WANDLE.midi \

TARGET = ${TARGET_COMMON} ${TARGET_SPECIAL}

${TARGET_COMMON}: %.midi: ../BRAHMS_LL_%.mid
	midiconv.py -tv 3 0 0 $< $@

${TARGET_SPECIAL}: %.midi: ../BRAHMS_LL_%.mid
	midiconv.py -tv 1 0 0 $< $@

all: ${TARGET}

