#!/bin/bash

set -u

wg() {
   root=http://www.dycom-il.com/c
   wget ${root}/${1}
   local rc=$?
   if [[ ${rc} -ne 0 ]]
   then
     echo fail $1
     exit ${rc}
   fi
}

if [[ 0 == 1 ]]
then
wg char-tedeum-01.mid
wg char-tedeum-02-bas.mid
wg char-tedeum-02.mid
wg char-tedeum-03-bas.mid
wg char-tedeum-03-ten.mid
wg char-tedeum-03-alt.mid
wg char-tedeum-03-sop.mid
wg char-tedeum-03.mid
wg char-tedeum-04-bas.mid
wg char-tedeum-04-ten.mid
wg char-tedeum-04-alt.mid
wg char-tedeum-04-sop.mid
wg char-tedeum-04.mid
wg char-tedeum-05-bas.mid
wg char-tedeum-05-ten.mid
wg char-tedeum-05-alt.mid
wg char-tedeum-05.mid
wg char-tedeum-06-bas.mid
wg char-tedeum-06-ten.mid
wg char-tedeum-06-alt.mid
wg char-tedeum-06-sop.mid
wg char-tedeum-06.mid
wg char-tedeum-07-sop.mid
wg char-tedeum-07.mid
wg char-tedeum-08-bas.mid
wg char-tedeum-08-ten.mid
wg char-tedeum-08-alt.mid
wg char-tedeum-08-sop.mid
wg char-tedeum-08.mid
wg char-tedeum-09-bas.mid
wg char-tedeum-09-sop.mid
wg char-tedeum-09.mid
wg char-tedeum-10-bas.mid
wg char-tedeum-10-alt.mid
wg char-tedeum-10-sop.mid
wg char-tedeum-10.mid
wg char-tedeum-11-bas.mid
wg char-tedeum-11-ten.mid
wg char-tedeum-11-alt.mid
wg char-tedeum-11-sop.mid
wg char-tedeum-11.mid
wg char-tedeum-D03-bas.mid
wg char-tedeum-D03-ten.mid
wg char-tedeum-D03-alt.mid
wg char-tedeum-D03-sop1.mid
wg char-tedeum-D03.mid
wg char-tedeum-D03-sop2.mid
wg char-tedeum-D04-bas.mid
wg char-tedeum-D04-ten.mid
wg char-tedeum-D04-alt.mid
wg char-tedeum-D04-sop.mid
wg char-tedeum-D04.mid
wg char-tedeum-D06-bas.mid
wg char-tedeum-D06-ten.mid
wg char-tedeum-D06-alt.mid
wg char-tedeum-D06-sop.mid
wg char-tedeum-D06.mid
fi

wg char-tedeum-D08-bas.mid
wg char-tedeum-D08-ten.mid
wg char-tedeum-D08-alt.mid
wg char-tedeum-D08-sop.mid
wg char-tedeum-D08.mid
wg char-tedeum-D11-bas.mid
wg char-tedeum-D11-ten.mid
wg char-tedeum-D11-alt.mid
wg char-tedeum-D11-sop.mid
wg char-tedeum-D11.mid
