#! /bin/bash

#echo --------------------------Example 1
#select name in zakaria arif ruhul sihab arfan
#do
#	echo "$name selected"
#done

echo --------------------------Example 2
select name in zakaria arif ruhul
do
	case $name in
	"zakaria" )
		echo "$name Selected" ;;
	"arif" )
		echo "$name Selected" ;;

	"ruhul" )
		echo "$name Selected" ;;

	* )
		echo "Error! please provide a number between 1 to 3 ";;
	esac
done
