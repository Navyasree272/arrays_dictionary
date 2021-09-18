#!bin/bash -x
declare -A store
count=0
for ((i=1;i<=100;i++))
   do
    n1=i%10
    n2=n1%10
  if (( n1==n2 ))
  then
  store[count++]="$i"
  fi
 done
echo ${store[@]}
