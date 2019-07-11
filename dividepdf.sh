#!/bin/bash

if [[ "$1" == "-h" ]] || [[ "$1" == "--help" ]] || [[ -z "$1" ]]
then
	>&2 echo "usage: dividepdf.sh [-h | --help]"
	>&2 echo "   or: dividepdf.sh -a <source file> <start page>-<finish page> <output file> ..."
	>&2 echo "   or: dividepdf.sh <source file> <start page>-<finish page> ..."
	>&2 echo "Arguments:"
	>&2 echo "   -h or --help:	display this help page"
	>&2 echo "   -a:			allow designation of output files"
	
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
