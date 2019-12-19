#! /bin/bash

n=1
while [ $n -le 5 ]
do
	echo $n
	#n=$(( n+1 ))
	(( n++ ))
done


echo ------------------------
n=1
while (( $n <= 5 ))
do
	echo $n
	(( n++ ))
done