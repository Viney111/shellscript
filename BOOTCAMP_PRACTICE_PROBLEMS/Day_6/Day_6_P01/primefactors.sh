#!/bin/bash

read -p "Enter any Number: " Number
i=2


while [ $i -lt $Number ]
do
    if [ $(($Number%$i)) -eq 0 ]
    then
    flag=0
    n=2
        while [ $n -lt $i ]
        do
            if [ $(($i%$n)) -eq 0 ]
            then
            flag=1
            fi
        n=$(($n+1))
        done
            if [ $flag -eq 0 ]
            then
            echo "$i"
            fi
    fi
i=$(($i+1))
done
