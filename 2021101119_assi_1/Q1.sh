#!/bin/bash
egrep -v "^$" quotes.txt > quotes2.txt
perl -i -pe "chomp if eof" quotes2.txt
cat quotes2.txt
rm quotes2.txt
echo
awk '!seen[$0]++' quotes.txt > new.txt
perl -i -pe "chomp if eof" new.txt
cat new.txt
rm new.txt
echo