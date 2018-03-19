#!/bin/bash

set -u

wg() {
   root=http://www.dycom-il.com/h
   wget ${root}/${1}
   local rc=$?
   if [[ ${rc} -ne 0 ]]
   then
     echo fail $1
     exit ${rc}
   fi
}


wg handel-AF03-bas.mid
wg handel-AF03-ten.mid
wg handel-AF03-alt.mid
wg handel-AF03-sop.mid
wg handel-AF03.mid
wg handel-AF06-bas1.mid
wg handel-AF06-ten1.mid
wg handel-AF06-alt.mid
wg handel-AF06-sop1.mid
wg handel-AF06.mid
wg handel-AF06-bas2.mid
wg handel-AF06-ten2.mid
wg handel-AF06-sop2.mid
wg handel-AF09-bas.mid
wg handel-AF09-ten.mid
wg handel-AF09-alt.mid
wg handel-AF09.mid
wg handel-AF14-bas.mid
wg handel-AF14-ten.mid
wg handel-AF14-alt.mid
wg handel-AF14-sop.mid
wg handel-AF14.mid
wg handel-AF18-bas.mid
wg handel-AF18-ten.mid
wg handel-AF18-alt.mid
wg handel-AF18-sop.mid
wg handel-AF18.mid
wg handel-AF20-bas.mid
wg handel-AF20-ten.mid
wg handel-AF20-alt.mid
wg handel-AF20-sop.mid
wg handel-AF20.mid
wg handel-AF24-bas.mid
wg handel-AF24-ten.mid
wg handel-AF24-alt.mid
wg handel-AF24-sop.mid
wg handel-AF24.mid
wg handel-AF25-bas.mid
wg handel-AF25-ten.mid
wg handel-AF25-alt.mid
wg handel-AF25-sop.mid
wg handel-AF25.mid
wg handel-AF27-bas.mid
wg handel-AF27-ten.mid
wg handel-AF27-alt.mid
wg handel-AF27-sop.mid
wg handel-AF27.mid
wg handel-AF28-bas.mid
wg handel-AF28-ten.mid
wg handel-AF28-alt.mid
wg handel-AF28-sop.mid
wg handel-AF28.mid
