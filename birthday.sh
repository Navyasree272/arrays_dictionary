#! bin/bash -x


declare -A LIST
for ((i=1;i<=50;i++));
 do
   echo please print in form of  month/year
              while IFS=" | read -r key data1
                  do
                  LIST[ 'key']='value'
                  done
  done

function get_items(){
    KEY=$1
    VALUES=()
    shift $2
    for VALUE in "$@"; do
        VALUES[${#VALUES[@]}]="$VALUE"
    done
}

declare -A THE_LIST
for ((LISTID=0; LISTID<${#THE_LIST[@]}; LISTID++)); do
    eval "LISTED_ITEM=(${THE_LIST[$LISTID]})"
    get_items "${LISTED_ITEM[@]}"
    THE_LIST=([$KEY]="${VALUES[@]}")
done

