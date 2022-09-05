#!/bin/bash

result=""
string=""
while [[ $string != "q" ]]
do
read string
result=$result$string
done

echo $result
