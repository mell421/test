#!/bin/bash

if (( $# == 1 ))
then
    grep $1 */*.md > Z/$1;
    grep $1 *.html >> Z/$1;
else
    if (( $# == 2 ))
    then
	grep $1 */*.md > Z/$1;
	grep $1 *.html >> Z/$1;
	grep $2 Z/$1 > Z/$1$2;
	rm Z/$1;
    else
	if (( $# == 3 ))
	then
	    grep $1 */*.md > Z/$1;
	    grep $1 *.html >> Z/$1;
	    
	    grep $2 Z/$1 > Z/$2;
	    grep $3 Z/$2 > Z/$1$2$3;
	    rm Z/$1 Z/$2;
	else
	    if (( $# == 4 ))
	    then
		grep $1 */*.md > Z/$1;
		grep $1 *.html >> Z/$1;
		
		grep $2 Z/$1 > Z/$2;
		grep $3 Z/$2 >> Z/$3;
		grep $4 Z/$3 >> Z/$1$2$3$4;
		rm Z/$1 Z/$2 Z/$3;
		
	    fi;
	fi;
    fi;
fi;