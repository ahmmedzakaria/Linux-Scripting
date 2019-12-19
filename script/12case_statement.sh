#! /bin/bash

vehicle=$1
case $vehicle in
	"car" )
		echo "Rent of $vehicle is 100 doller" ;;
	"van" )
		echo "Rent of $vehicle is 100 doller" ;;
	"bicycle" )
		echo "Rent of $vehicle is 100 doller" ;;
	"truck" )
		echo "Rent of $vehicle is 100 doller" ;;
	* )
		echo "Unknown vehicle" ;;
	esac