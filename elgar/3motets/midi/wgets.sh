#!/bin/bash

action()
{
  echo $@
  $@
  local rc=$?
  if [[ ${rc} -ne 0 ]]
  then
    exit ${rc}
  fi
}

root=http://www.dycom-il.com/e
n=0
for name in ave-verum ave-maria ave-maris-stella
do
  ((n=n+1))
  sops=sop
  alts=alt
  if [[ ${name} = "ave-maris-stella" ]]
  then
    sops="sop1 sop2"
    alts=""
  fi
  action wget -O ${n}-${name}.mid ${root}/elgar-${name}.mid
  for v in ${sops} ${alts} ten bas
  do
    action wget -O ${n}-${name}-${v}.mid ${root}/elgar-${name}-${v}.mid
  done
done
