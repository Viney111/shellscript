#!/bin/bash
function iterate 
{
  n=${#detective[@]}
  for (( i=0; i<n; i++ ))
  do
    echo ${detective[$i]}
  done
}

detective=("Feluda" "Sharlockhomes" "Bomkesh" )
iterate ${detective[@]}