#!/bin/bash -x

# #For moving files in their respective folders.
# for files in `ls *.txt`
# do
# folder_name=`echo $files | awk -F. '{print $1}'`
# mkdir $folder_name
# mv $files $folder_name
# done

#for appending date to all the log files & moving it in respective folders.
for files in `ls *.log`
do
Date=$(date +%d%m%y)
folder_name=`echo $files | awk -F. '{print $1}'`
mkdir $folder_name
mv $files $Date$files
mv $Date$files $folder_name
done
