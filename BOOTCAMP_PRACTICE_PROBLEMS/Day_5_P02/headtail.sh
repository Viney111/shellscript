#!/bin/bash -x
head=1
tail=0
Die=$((RANDOM%2))
if [ $Die -eq $head ]
then
echo "Head"
else
echo "Tail"
fi
