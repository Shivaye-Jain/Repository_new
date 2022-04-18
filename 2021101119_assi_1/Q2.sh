#!/bin/bash
egrep -v "^$" quotes.txt > quotes2.txt
perl -i -pe "chomp if eof" quotes2.txt
while IFS= read -r line
do
    var=$line
    var2=$(echo $var | cut -d "~" -f2)
    b=${var%~*}
    c=${b%?}
    echo "$var2 once said, \"$c\"" >> speech.txt
done < quotes2.txt
tag=$( tail -n 1 quotes2.txt )
var=$tag
    var2=$(echo $var | cut -d "~" -f2)
    b=${var%~*}
    c=${b%?}
    echo "$var2 once said, \"$c\"" >> speech.txt
rm quotes2.txt