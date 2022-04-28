#!/bin/bash -x
read -p "Enter 1st Number: " a
read -p "Enter 2nd Number: " b
read -p "Enter 3rd Number: " c
a_1=$(( $a + $b * $c ))
echo $a_1
a_2=$(( $a % $b + $c ))
echo $a_2
a_3=$(( $c + $a / $b ))
echo $a_3
a_4=$(( $a * $b + $c ))
echo $a_4

max_no=0
min_no=0

if [[ $a -gt $b ]] && [[ $a -gt $c ]]
then
            max_no=$a
    if [ $c -gt $b ]
    then
            min_no=$b
    else
            min_no=$c
    fi
elif [[ $b -gt $a ]] && [[ $b -gt $c ]]
then
            max_no=$b
    if [ $a -gt $c ]
    then
            min_no=$c
    else
            min_no=$a
    fi
else
            max_no=$c
    if [ $a -gt $b ]
    then
            min_no=$b
    else
            min_no=$a
    fi
fi
echo "Max_Number: $max_no"
echo "Min_Number: $min_no"
