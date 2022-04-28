#!/bin/bash -x

Month=`date +%m`
Day=`date +%d`
echo $Month
echo $Day

if [ $Month -lt 5 ]
then
    if [ $Month -gt 3 ]
    then
            echo "True"
    elif [ $Month -eq 3 ]
    then
        if [ $Day -ge 20 ]
        then    
                echo "True"
        else
                echo "False"
        fi
     elif [ $Month -lt 3 ] 
     then
        echo "False"
    fi
elif [ $Month -eq 5 ]
then
    if [ $Day -le 20 ]
    then    
            echo "True"
    else
            echo "False"
    fi
else
            echo "False"
fi
