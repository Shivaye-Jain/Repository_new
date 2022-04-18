#!/bin/bash
echo "Enter the string:"
read string
strlen=${#string}
for (( i=$strlen-1; i>=0; i-- ));
do
    revstr=$revstr${string:$i:1}
done
echo $revstr
revstr="$(echo $revstr | tr '[a-y]z' '[b-z]a')"
revstr="$(echo $revstr | tr '[A-Y]Z' '[B-Z]A')"
echo $revstr
echo "Enter the string:"
read string
str1=${string:0:${#string}/2}
str2=${string:${#string}/2}
strlen=${#str1}
for (( i=$strlen-1; i>=0; i-- ));
do
    revst=$revst${str1:$i:1}
done
echo -n $revst
echo $str2