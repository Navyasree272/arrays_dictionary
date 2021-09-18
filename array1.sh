#!/bin/bash
declare -A store
declare -A sorted
for ((i=0;i<10;i++))
do
res=shuf  -i  100-999 -n 1
 store[i]=" $res "
done
echo ${store[@]}
sorted=($(sort <<<"${store[*]}"));
echo second smallest :"${sorted[2]}"
echo  second largest :"${sorted[8]}"



