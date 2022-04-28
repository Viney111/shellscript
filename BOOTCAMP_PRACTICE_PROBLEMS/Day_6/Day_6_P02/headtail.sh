#!/bin/bash -x
head=1
tail=0
n=1
m=1

while [[ $n -le 11 && $m -le 11 ]]
do
    Die=$((RANDOM%2))
    if [ $Die -eq $head ]
    then
    echo "Head"
    ((n++))
    else
    echo "Tail"
    ((m++))
    fi
done
