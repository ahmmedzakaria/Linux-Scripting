#! /bin/bash
echo BASH_VERSION $BASH_VERSION
echo ------------------------ Example 1
n=1
for i in 1 2 3 4 5 
do
	echo $n
	(( n++ ))

done

echo ------------------------ Example 2
n=1
for (( i=0; i<5; i++ ))
do
	echo $n
	(( n++ ))

done

echo ------------------------ Example 3
# .. notation is work for bash version 4.0 or above
n=1
for i in {1..10} 
do
	echo $n
	(( n++ ))

done


echo ------------------------ Example 4
# .. notation is work for bash version 4.0 or above
n=1
for i in {1..10..2}  #startvalue=1, endalue=10, increment=2
do
	echo $n
	(( n++ ))

done