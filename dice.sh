#!bin/bash -x
declare -A store1
declare -A store2
declare -A stroe3
declare -A store4
declare -A stroe5
declare -A store6
declare -A array
declare -A sorted
count=0

value=$(( ($RANDOM % 5)+1))
while true; do
    if (( count<= 10))
    then
   case $value in
        1) store1["count++"]=value ;;
        2) store2["count++"]=value ;;
        3) store3["count++"]=value ;;
        4) store4["count++"]=value ;;
        5) store5["count++"]=value ;;
        6) store6["count++"]=value;;
        
    esac	
   else
      break ;
   fi
 done
a=${#store1[@]}
b=${#store2[@]}
c=${#store3[@]}
d=${#store4[@]}
e=${#store5[@]}
f=${#store6[@]}

array=( a b c d e f)

sorted=($(sort  <<<"$array[*]}"))
echo "$sorted[0]is the minmum times appread "
echo "$sorted[4] is the maximum times appread"
