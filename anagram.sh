#!/bin/bash
read -p "Enter the first Number: " Num_1
read -p "Enter the first Number: " Num_2

sd_1=0
nd_1=0

function No.ofdigits() {
    local Num=$1
while [ $Num -gt 0 ]
do
    i=0
    sd_1=$(( $Num % 10 )) 
    Num=$(( $Num / 10 )) 
    nd=$(( $nd + 1)) 
    Arr[$i]=$sd_2
    i=$(($i+1))
done
echo ${Arr[@]}
}

# getdigits_1="$( No.ofdigits $Num_1 )"   
# getdigits_2="$( No.ofdigits $Num_2 )"
# echo "$getdigits_1"
# echo "$getdigits_2"
An_1="$( No.ofdigits $Num_1 )"   
An_2="$( No.ofdigits $Num_2 )"
echo "${An_1[@]}"
echo "${An_2[@]}"