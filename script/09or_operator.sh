#! /bin/bash

echo "-------------------------------"
echo "Or Example 1"
echo "-------------------------------"
age=25
if [ "$age" -gt 18 ] || [ "$age" -lt 30 ]
then
echo $age is valid age
else
echo $age is not a valid age
fi

echo "-------------------------------"
echo "Or Example 2"
echo "-------------------------------"
age=32
if [[ "$age" -gt 18 || "$age" -lt 30 ]]  
then
echo $age is valid age
else
echo $age is not a valid age
fi

echo "-------------------------------"
echo "Or Example 3"
echo "-------------------------------"
age=50
if [ "$age" -gt 18 -o "$age" -lt 30 ]    # -o for or
then
echo $age is valid age
else
echo $age is not a valid age
fi


