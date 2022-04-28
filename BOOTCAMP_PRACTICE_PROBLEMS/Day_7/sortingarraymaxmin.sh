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
p=0
    while [ $p -lt ${#Array[@]} ]
    do
        j=0
        while [ $j -lt ${#Array[@]} ]
        do
            if [ ${Array[$j]} -gt ${Array[$(($j+1))]} ]
            then
            temp=${Array[$j]}
            Array[$j]=${Array[$(($j+1))]}
            Array[$(($j+1))]=$temp
            fi
        j=$(($j+1))
        done
    p=$(($p+1))
    done
echo "${Array[@]}"
echo "${Array[2]}"
echo "${Array[9]}"




