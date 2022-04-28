#!/bin/bash -x
read -p "Enter any Number: " Number
Factorial=1

for ((i=1; i<=$Number; i++))
do
Factorial=$(($Factorial*i))
done
echo $Factorial
