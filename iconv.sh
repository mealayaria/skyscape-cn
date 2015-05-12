#!/usr/bin/env bash

cd $1
for filename in `ls *.ks`
do
    iconv -f CP936 -t UTF-8 $filename > $filename".tmp"
    mv $filename".tmp" $filename
done

#ls | while read lines
#do
#    echo $line
#    iconv -f CP936 -t UTF-8 $filename > $filename".tmp"
#done

