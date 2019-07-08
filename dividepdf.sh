#!/bin/bash

sourcefile=$1

shift 1

while [ ! -z "$1" ] ;
do
	qpdf --pages $sourcefile $1 -- $sourcefile $1.pdf
	shift 1
done	

exit
