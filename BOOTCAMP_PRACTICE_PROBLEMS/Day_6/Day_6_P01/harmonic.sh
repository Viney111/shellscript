#!/bin/bash -x
read -p "Enter any Number: " Number
Hn=0

for ((i=1; i<=$Number; i++))
do
Hn=1/$i
done
echo "$Hn"

