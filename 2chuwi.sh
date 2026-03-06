#!/bin/bash
# Rsync to Chuwi PDFS

# Gemini suggested:
# rsync -avm --include='*/' --include='*.pdf' --exclude='extra_folder/' --exclude='temp_*' --exclude='*' /source/path/ /destination/path/

rsync -avmz --mkpath \
      --include='*/' --include='*.pdf' \
      --exclude AR-NN/ \
      --exclude audiveris/ \
      --exclude bach/keyboard/ \
      --exclude beethoven/ \
      --exclude bwv-1043-violin-double-concerto/ \
      --exclude bwv-1079-musical-offering/ \
      --exclude bwv-235/white/ \
      --exclude bwv1001-1006-violin-sonatas-partitias/ \
      --exclude carmina_burana/ \
      --exclude carus/ \
      --exclude collegium/ \
      --exclude ecpecs/ \
      --exclude emmanuelmusic/ \
      --exclude gadi/Hiyu_leilot/ \
      --exclude givatyim/ \
      --exclude haydn/songs/ \
      --exclude hefer-germany/ \
      --exclude imslp/ \
      --exclude inventions/ \
      --exclude itay/ \
      --exclude kac/ \
      --exclude libretto/ \
      --exclude misc/ \
      --exclude mp-tb-workshop.d/ \
      --exclude mxl.d/ \
      --exclude naama30/ \
      --exclude old/ \
      --exclude opus-52-liebeslieder-walzer/score/cpdl/ \
      --exclude other/ \
      --exclude samachti/score/orig/ \
      --exclude scan.d/ \
      --exclude scanned/ \
      --exclude score-old/ \
      --exclude scr/ \
      --exclude seminars/ \
      --exclude shabat-shira-june22/ \
      --exclude te-deum/score/cpdl/ \
      --exclude te-deum/score/musescore/ly/ \
      --exclude text/ \
      --exclude tivon-tehilim.d/ \
      --exclude tivon/ \
      --exclude translation/ \
      --exclude verdi/requiem/score/cpdl/ \
      --exclude vocal-fantasy-2013/ \
      --exclude williams_ralph/score/5.d/ \
      --exclude wonder/ \
      --exclude xlate/ \
      --exclude zamadrigal/ \
      --exclude zimriya-2013/ \
      --exclude '*' \
      /home/yotam/music.d/ 192.168.0.90:/home/yotam/music.d/
