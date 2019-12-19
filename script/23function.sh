#! /bin/bash
echo BASH_VERSION $BASH_VERSION

# we can write function in two notation in bash script, whic are given below

function hello(){
	echo hello
}

quit(){
	echo quit
}



hello
quit

#function with argument
function print(){
	echo Hello $1
}

print Arif
print "Zakaria Ahmmed"
