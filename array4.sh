#!bin/bash -x
declare -A store1
declare -A store2
k=0
l=0
echo" how many digits  are there in number"
read n
 for(( i=0;i<n;i++ ))
  do
   echo"please enter each one value to be used"
   read num
    if ((  $num < 0 ))
     then
       store1[k++]=$num
    else 
       store2[l++]=$num
    fi
 done
 for i in ${store1[@]}
do
    k=`expr $k + $i`
done
k=(( $k * -1 ))
for i in ${store2[@]}
do
    l=`expr $l + $i`
done
if (( k == l ))
echo "the sum of all integers is zero"
fi
