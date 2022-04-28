#!/bin/bash -x
array=( $(seq 1 100 ) )
echo "${array[@]}"
i=0
while [ $i -lt 100 ] 
do
    if [ $((${array[$i]}%11)) -eq 0 ]
    then
    # Counter=0
            # Array[counter++]=${array[$i]}
    # n=0
    # Array[((n++))]=${array[$i]}
    Array[((n++))]=${array[$i]}
    fi
i=$(($i+1))
done
echo "${Array[@]}"