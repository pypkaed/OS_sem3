#!/bin/bash

# I
mas=(a b c)
read mas[0] mas[1] mas[2]

max=${mas[0]}
for i in ${mas[*]}
do
if [[ "$i" -gt "$max" ]]
then max=$i
fi
done

echo $max
