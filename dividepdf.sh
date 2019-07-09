#!/bin/bash

if [[ "$1" == "-h" ]] || [[ "$1" == "--help" ]] || [[ -z "$1" ]]
then
	echo "usage: dividepdf.sh [-h | --help]"
	echo "   or: dividepdf.sh -a <source file> <start page>-<finish page> <output file> ..."
	echo "   or: dividepdf.sh <source file> <start page>-<finish page> ..."
	echo "Arguments:"
	echo "   -h or --help:	display this help page"
	echo "   -a:			allow designation of output files"
	
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
