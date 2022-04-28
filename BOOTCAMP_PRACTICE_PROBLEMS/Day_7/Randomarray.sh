#!/bin/bash
counter=1
Array[((counter++))]=$((RANDOM%900 + 100))
Array[((counter++))]=$((RANDOM%900 + 100))
Array[((counter++))]=$((RANDOM%900 + 100))
Array[((counter++))]=$((RANDOM%900 + 100))
Array[((counter++))]=$((RANDOM%900 + 100))
Array[((counter++))]=$((RANDOM%900 + 100))
Array[((counter++))]=$((RANDOM%900 + 100))
Array[((counter++))]=$((RANDOM%900 + 100))
Array[((counter++))]=$((RANDOM%900 + 100))
Array[((counter++))]=$((RANDOM%900 + 100))
echo ${Array[@]}
i=1
Max1=0
n=1
while [ $i -le 10 ]
do
    if [ ${Array[$i]} -gt $Max1 ]
    then
    Max1=${Array[$i]}
    fi
    i=$(($i+1))
done
echo $Max1
i=1
Min=1000
n=1
while [ $i -le 10 ]
do
    if [ ${Array[$i]} -lt $Min ]
    then
    Min=${Array[$i]}
    fi
    i=$(($i+1))
done
echo $Min





