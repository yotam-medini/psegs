#!/bin/bash
# Rsync to Chuwi PDFS

# Gemini suggested:
# rsync -avm --include='*/' --include='*.pdf' --exclude='extra_folder/' --exclude='temp_*' --exclude='*' /source/path/ /destination/path/

rsync -avmz --mkpath \
      --include='*/' --include='*.pdf' \
      --exclude /scr/ \
      --exclude /scanned/ \
      --exclude /misc/ \
      --exclude /bwv1001-1006-violin-sonatas-partitias/ \
      --exclude /bwv-1043-violin-double-concerto/ \
      --exclude /bwv-1079-musical-offering/ \
      --exclude /bwv-235/white/ \
      --exclude /emmanuelmusic/ \
      --exclude /inventions/ \
      --exclude /bach/keyboard/ \
      --exclude /mp-tb-workshop.d/ \
      --exclude /beethoven/ \
      --exclude /translation/ \
      --exclude /scan.d/ \
      --exclude /libretto/ \
      --exclude /itay/ \
      --exclude /te-deum/score/cpdl/ \
      --exclude /te-deum/score/musescore/ly/ \
      --exclude /opus-52-liebeslieder-walzer/score/cpdl/ \
      --exclude /collegium/ \
      --exclude /ecpecs/ \
      --exclude /xlate/ \
      --exclude /givatyim/ \
      --exclude /samachti/score/orig/ \
      --exclude /audiveris/ \
      --exclude /haydn/songs/ \
      --exclude /hefer-germany/ \
      --exclude /kac/ \
      --exclude /imslp/ \
      --exclude /text/ \
      --exclude /other/ \
      --exclude /naama30/ \
      --exclude /carmina_burana/ \
      --exclude /carus/ \
      --exclude /AR-NN/ \
      --exclude /old/ \
      --exclude /mxl.d/ \
      --exclude /seminars/ \
      --exclude /shabat-shira-june22/ \
      --exclude /tivon/ \
      --exclude /tivon-tehilim.d/ \
      --exclude /verdi/requiem/score/cpdl/ \
      --exclude /vocal-fantasy-2013/ \
      --exclude /williams_ralph/score/5.d/ \
      --exclude /zamadrigal/ \
      --exclude /wonder/ \
      --exclude /gadi/Hiyu_leilot/ \
      --exclude /score-old/ \
      --exclude /zimriya-2013/ \
      --exclude '*' \
      /home/yotam/music.d/ 192.168.0.90:/home/yotam/music.d/
