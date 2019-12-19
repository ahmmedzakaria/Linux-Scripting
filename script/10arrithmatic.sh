#! /bin/bash

echo 1+2

num1=20
num2=5

echo ---------------------------------
echo Arrithmatic Example 1
echo ---------------------------------

echo $(( num1 + num2 ))
echo $(( num1 - num2 ))
echo $(( num1 * num2 ))
echo $(( num1 / num2 ))
echo $(( num1 % num2 ))

echo ---------------------------------
echo Arrithmatic Example 2
echo ---------------------------------

echo $( expr $num1 + $num2 )
echo $( expr $num1 - $num2 )
echo $( expr $num1 \* $num2 )
echo $( expr $num1 / $num2 )
echo $( expr $num1 % $num2 )