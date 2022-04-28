#!/bin/bash -x

counter=0
Fruits[((Counter++))]="Apple"
Fruits[((Counter++))]="Banana"
Fruits[((Counter++))]="Orange"
echo ${Fruits[@]}
echo ${!Fruits[@]}

Dog[1]=1
Dog[2]="Vishal"
Dog[3]="Yash"
echo ${Dog[@]}
echo ${!Dog[@]}