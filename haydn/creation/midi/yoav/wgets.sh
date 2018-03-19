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


wg haycrea1.mid
wg HAYCRE01-BAS.mid
wg HAYCRE01-TEN.mid
wg HAYCRE01-ALT.mid
wg HAYCRE01-SOP.mid
wg HAYCRE01.mid
wg HAYCRE02-BAS.mid
wg HAYCRE02-TEN.mid
wg HAYCRE02-ALT.mid
wg HAYCRE02-SOP.mid
wg HAYCRE02.mid
wg HAYCRE04-BAS.mid
wg HAYCRE04-TEN.mid
wg HAYCRE04-ALT.mid
wg HAYCRE04-SOP.mid
wg HAYCRE04.mid
wg HAYCRE10-BAS.mid
wg HAYCRE10-TEN.mid
wg HAYCRE10-ALT.mid
wg HAYCRE10-SOP.mid
wg HAYCRE10.mid
wg HAYCRE13-BAS.mid
wg HAYCRE13-TEN.mid
wg HAYCRE13-ALT.mid
wg HAYCRE13-SOP.mid
wg HAYCRE13.mid
wg HAYCRE19-BAS.mid
wg HAYCRE19-TEN.mid
wg HAYCRE19-ALT.mid
wg HAYCRE19-SOP.mid
wg HAYCRE19.mid
wg HAYCRE26-BAS.mid
wg HAYCRE26-TEN.mid
wg HAYCRE26-ALT.mid
wg HAYCRE26-SOP.mid
wg HAYCRE26.mid
wg HAYCRE28-BAS.mid
wg HAYCRE28-TEN.mid
wg HAYCRE28-ALT.mid
wg HAYCRE28-SOP.mid
wg HAYCRE28.mid
wg HAYCRE30-BAS.mid
wg HAYCRE30-TEN.mid
wg HAYCRE30-ALT.mid
wg HAYCRE30-SOP.mid
wg HAYCRE30.mid
wg HAYCRE34-BAS.mid
wg HAYCRE34-TEN.mid
wg HAYCRE34-ALT.mid
wg HAYCRE34-SOP.mid
wg HAYCRE34.mid
