#! /bin/bash

echo -e "Enter character : \c"
read value

case $value in
	[a-z] )
		echo "You entered $value a to z" ;;
	[A-Z] )
		echo "You entered $value A to Z" ;;
	[0-9] )
		echo "You entered $value 0 to 9" ;;
	? )
		echo "You entered $value special character" ;;
	* )
		echo "Unknown $value" ;;
	esac
	
	#if not work for capital letter then run following line in terminal
	#LANG=C