#! /bin/bash
echo BASH_VERSION $BASH_VERSION


echo ------------------------ "Example 1 for break"
for (( i=0; i<10; i++ ))
do
	if [ $i -gt 5 ]
	then
		break
	fi
	echo $i
done


echo ------------------------ "Example 2 for continue"
for (( i=0; i<10; i++ ))
do
	if [ $i -eq 5 -o $i -eq 6  ] # -o for or
	then
		continue
	fi
	echo $i
done



