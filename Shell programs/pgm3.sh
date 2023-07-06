#!/bin/bash

echo Enter the 1st no:
read m 
echo Enter the 2nd no:
read n 
echo Enter the 3rd no:
read o
if [ $m -gt $n ] && [ $m -gt $o ]
then 
echo Largest number is $m
elif [ $n -gt $m ] && [ $n -gt $o ] 
then 
echo Largest number is $n
else 
echo Largest number is $o
fi

