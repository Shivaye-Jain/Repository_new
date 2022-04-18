#!/bin/bash
echo "Enter file name:"
read file
stat --printf="%s" $file
echo
no_lines=$(wc -l < $file)
let no_lines++
echo $no_lines
wc -w < $file
echo >> $file
line_no=0
while IFS= read -r line
do
    let line_no++
    var=$(wc -w <<< "$line")
    echo "Line No: $line_no - Count of Words: $var"
done < $file
perl -i -pe "chomp if eof" $file
grep -wo '[[:alnum:]]\+' $file | sort | uniq -cd > temp.txt
file=temp.txt
while IFS= read -r line
do
a=$line
arr=($a)
var1=${arr[@]:0:1}
var2=${arr[@]:1:2}
echo "Word: $var2 - Count of repetition: $var1"
done < $file
rm temp.txt