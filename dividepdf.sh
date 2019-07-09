#!/bin/bash

if [[ "$1" == "-h" ]] || [[ "$1" == "--help" ]]
then
	echo "help page"
elif [[ "$1" == "-a" ]]
then	
	shift 1

	sourcefile=$1

	shift 1

	while [ ! -z "$1" ] ;
	do
		qpdf --pages $sourcefile $1 -- $sourcefile $2.pdf
		shift 2
	done
	
	exit
else
	shift 1

	sourcefile=$1
	
	shift 1

	while [ ! -z "$1" ] ;
	do
		qpdf --pages $sourcefile $1 -- $sourcefile $1.pdf
		shift 1
	done

	exit
fi
