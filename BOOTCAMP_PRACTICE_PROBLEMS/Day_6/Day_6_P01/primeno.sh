#!/bin/bash

read -p "Enter any Number: " Number
i=2
flag=0
if [ $Number -ne 2 ]
    then
        while [ $Number -gt $i ]
            do
                Condition_1=$(($Number%i))
                if [ $Condition_1 -eq 0 ]
                    then
                        flag=0
                        echo "$Number is not a prime number"
                    break
                fi
            i=$(($i+1))
            done
            if [ $Condition_1 -ne 0 ]
                then
                    echo "$Number is a prime number"
            fi
else 
echo "$Number is a prime number"
fi



                




                
