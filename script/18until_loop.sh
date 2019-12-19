#! /bin/bash

# if condition is false is false then until loop will execute

n=1
until [ $n -ge 5 ]
do
	echo $n
	#n=$(( n+1 ))
	(( n++ ))
	#(( ++n ))
done


echo ------------------------
n=1
until (( $n > 5 ))
do
	echo $n
	(( n++ ))
	#(( ++n ))
done