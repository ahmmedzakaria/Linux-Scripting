
#! /bin/bash

cat file_test.sh | while read filedata
do
	echo $filedata
done 