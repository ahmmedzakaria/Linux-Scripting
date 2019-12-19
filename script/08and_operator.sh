#! /bin/bash

echo "-------------------------------"
echo "And Example 1"
echo "-------------------------------"
age=25
if [ "$age" -gt 18 ] && [ "$age" -lt 30 ]
then
echo $age is valid age
else
echo $age is not a valid age
fi

echo "-------------------------------"
echo "And Example 2"
echo "-------------------------------"
age=32
if [[ "$age" -gt 18 && "$age" -lt 30 ]]   # -a for and
then
echo $age is valid age
else
echo $age is not a valid age
fi

echo "-------------------------------"
echo "And Example 3"
echo "-------------------------------"
age=50
if [ "$age" -gt 18 -a "$age" -lt 30 ]    # -a for and
then
echo $age is valid age
else
echo $age is not a valid age
fi

