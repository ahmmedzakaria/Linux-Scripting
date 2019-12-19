
#! /bin/bash

#while IFS=' ' read -r linedata
while IFS= read -r linedata
do
	echo $linedata
done < file_test.sh


# here a space is assign into IFS
# -r for prevent interprateing special character like /,& etc