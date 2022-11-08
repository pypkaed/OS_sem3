#!/bin/bash

declare -A mas
count=0
step=0
> report2.log
> report2.top

#while [[ "$SECONDS" -le "10" ]]; do
while :
do
    let step=$step+1
    if [[ $(($step%100000)) -eq 0 ]]; then
        echo ${#mas[@]} >> report2.log
	./mem2.top
    fi
    for i in 1 2 3 4 5 6 7 8 9 10
    do
	mas[$count]=$i
	let count=$count+1
    done
done
#echo -ne "$SECONDS\r"
#done
