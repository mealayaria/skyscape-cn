#!/usr/bin/env bash

cd $1
for filename in `ls *.ks`
do
    if iconv -f CP936 -t UTF-8 $filename > $filename".tmp"
    then 
        mv $filename".tmp" $filename
    else
        rm $filename".tmp"
        continue
    fi
done

#ls | while read lines
#do
#    echo $line
#    iconv -f CP936 -t UTF-8 $filename > $filename".tmp"
#done

