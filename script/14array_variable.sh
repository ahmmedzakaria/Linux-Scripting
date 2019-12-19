#! /bin/bash

os=( 'ubuntu' 'windows' 'kali' )

echo "${os[@]}" #print whole array
echo "${os[1]}" #print 1st element of the array
echo "${!os[@]}" #print element indes of the array
echo "${#os[@]}" #print lengthof the array

os[3]='mac' #add element in the array
echo "${os[@]}" #print whole array

unset os[3]  #remove element from the array
echo "${os[@]}" #print whole array

#array in variable
string=kdfakldjfsd
echo "${string[@]}" 
echo "${string[0]}" 
echo "${string[1]}" 
echo "${#string[@]}" 