#! /bin/bash

echo ----------------------------Example 1
for command in ls pwd date
do
	echo --------------$command-----------------
	$command
done

echo ----------------------------Example 2
for item in *
do
	if [ -f $item ] 
	then
		echo $item
	fi
done