#! /bin/bash
echo BASH_VERSION $BASH_VERSION

#function with argument
function print(){
	name=$1 #this variable is accassable out of the function
	#local name=$1 #for declar local variable
	echo The name is $name
}

name=Rubel
echo The name is $name : "Befor function Call"

print "Zakaria Ahmmed"

echo The name is $name : "After function Call"
