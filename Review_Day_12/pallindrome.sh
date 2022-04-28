#!/bin/bash -x
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
if [ ${#An_1[@]} -eq ${#An_2[@]} ]
then
    i=1
    n=${#An_2[@]}
    while [ $i -le $n ]
    do
        if [ ${An_1[$i]} -eq ${An_2[$n]} ]
        then
        ((i++))
        ((n--))
        else
        echo "Numbers are not pallindrome"
        break;
        fi
    done
    if [ $i -gt $n ]
    then
    echo "Numbers are pallindrome"
    fi
else
echo "No. of digits are not equal"
fi

