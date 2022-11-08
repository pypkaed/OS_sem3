#!/bin/bash

N=$1
K=$2
number=0

while [[ "$number" -le "$K" ]]; do
    ./newmem.bash $N &
    let number=$number+1
    sleep 1
done
