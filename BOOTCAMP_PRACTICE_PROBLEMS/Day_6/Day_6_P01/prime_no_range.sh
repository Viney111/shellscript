#!/bin/bash -x
read -p "Enter any Number: " Number
i=2
j=0

if [ $Number -ne 2 ]
    then
        while [ $i -lt $Number ]
            do
                flag=1
                n=2
                rem_1=$(($Number%i))
                    while [ $n -lt $i ]
                        do
                           rem_2=$(($i%$n))
                                if [ $rem_2 -eq 0 ]
                                then
                                flag=0
                                break
                                fi
                        n=$(($n+1))
                    done
                    if [ $rem_1 -eq 0 ]
                    then
                        j=0
                    fi
                    if [ $flag -eq 1 ]
                    then
                    echo "$i"
                    fi
            i=$(($i+1))
            done
            if [ $rem_1 -ne 0 ]
                then
                    echo "$Number is a prime number"
            fi
else 
echo "$Number is a prime number"
fi