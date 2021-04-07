#!/bin/bash

if (( $# == 1 ))
then
    grep $1 */*.md > ZZ/$1;
    grep $1 *.html >> ZZ/$1;
else
    if (( $# == 2 ))
    then
	grep $1 */*.md > ZZ/$1;
	grep $1 *.html >> ZZ/$1;
	grep $2 ZZ/$1 > ZZ/$1$2;
	rm ZZ/$1;
    else
	if (( $# == 3 ))
	then
	    grep $1 */*.md > ZZ/$1;
	    grep $1 *.html >> ZZ/$1;
	    
	    grep $2 ZZ/$1 > ZZ/$2;
	    grep $3 ZZ/$2 > ZZ/$1$2$3;
	    rm ZZ/$1 ZZ/$2;
	else
	    if (( $# == 4 ))
	    then
		grep $1 */*.md > ZZ/$1;
		grep $1 *.html >> ZZ/$1;
		
		grep $2 ZZ/$1 > ZZ/$2;
		grep $3 ZZ/$2 > ZZ/$3;
		grep $4 ZZ/$3 > ZZ/$1$2$3$4;
		rm ZZ/$1 ZZ/$2 ZZ/$3;
		else
	    	if (( $# == 5 ))
	    	then
				grep $1 */*.md > ZZ/$1;
				grep $1 *.html >> ZZ/$1;
		
				grep $2 ZZ/$1 > ZZ/$2;
				grep $3 ZZ/$2 > ZZ/$3;
				grep $4 ZZ/$3 > ZZ/$4;
				grep $5 ZZ/$4 > ZZ/$1$2$3$4$5;
				rm ZZ/$1 ZZ/$2 ZZ/$3 ZZ/$4;
		
	    	fi;
	    fi;
	fi;
    fi;
fi;