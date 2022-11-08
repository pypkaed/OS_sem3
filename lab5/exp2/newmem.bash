#!/bin/bash

N=$1
declare -A mas
count=0
step=0

#while [[ "$SECONDS" -le "10" ]]; do
while [[ "${#mas[@]}" -le "$N" ]]
do
    let step=$step+1
    if [[ $(($step%100000)) -eq 0 ]]; then
	./newmem.top
    fi
    for i in 1 2 3 4 5 6 7 8 9 10
    do
	mas[$count]=$i
	let count=$count+1
    done
done
#echo -ne "$SECONDS\r"
#done
