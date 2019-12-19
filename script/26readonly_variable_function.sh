#! /bin/bash
echo BASH_VERSION $BASH_VERSION

var=31
readonly var
var=50
echo var: $var

hello(){
	echo hello world
}

hello

readonly -f hello # -f for function

hello(){
	echo hello world Again
}

hello

#readonly #display all readonly variable of the system
#readonly -p #display all readonly variable of the system
#readonly -f #display all readonly function of the system