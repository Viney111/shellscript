#!/bin/bash

read -p "Enter the first Number: " Num_1
read -p "Enter the first Number: " Num_2

sd_1=0
nd_1=0
i=0
while [ $Num_1 -gt 0 ]
do
    sd_1=$(( $Num_1 % 10 )) 
    Num_1=$(( $Num_1 / 10 )) 
    i=$(($i+1))
    An_1[$i]=$sd_1
done
echo ${An_1[@]}

sd_2=0
nd_2=0
q=0
while [ $Num_2 -gt 0 ]
do
    sd_2=$(( $Num_2 % 10 )) 
    Num_2=$(( $Num_2 / 10 )) 
    q=$(($q+1))
    An_2[$q]=$sd_2
done

echo ${An_2[@]}

function SortedArray() {
    Array=("$@")
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
}
Arr=`SortedArray "${An_2[@]}"`
SortedArray "${An_1[@]}"
echo "${Arr[@]}"


