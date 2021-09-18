#!/bin/bash -x

declare -A store
for ((i=0;i<10;i++))
do
res=shuf  -i  100-999 -n 1
 store[i]=" $res "
done
echo ${store[@]}


