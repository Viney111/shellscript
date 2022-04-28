#!/bin/bash

read -p "Enter any Number: " n

# for ((i=1;i<=$n;i++))
# do
# echo $((2 ** $i))
# done

i=1
while [ $i -le 8 ]
do
echo "$((2 ** $i))"
((i++))
done