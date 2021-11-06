#!/bin/bash
#${$1,,}
if (( $# == 1 ))
then
    grep $1 */*.md > Z/$1;
    grep $1 *.html >> Z/$1.txt;
else
    if (( $# == 2 ))
    then
	grep $1 */*.md > Z/$1;
	grep $1 *.html >> Z/$1;
	grep $2 Z/$1 > Z/$1$2.txt;
	rm Z/$1;
    else
	if (( $# == 3 ))
	then
	    grep $1 */*.md > Z/$1;
	    grep $1 *.html >> Z/$1;
	    
	    grep $2 Z/$1 > Z/$2;
	    grep $3 Z/$2 > Z/$1$2$3.txt;
	    rm Z/$1 Z/$2;
	else
	    if (( $# == 4 ))
	    then
		grep $1 */*.md > Z/$1;
		grep $1 *.html >> Z/$1;
		
		grep $2 Z/$1 > Z/$2;
		grep $3 Z/$2 >> Z/$3;
		grep $4 Z/$3 >> Z/$1$2$3$4.txt;
		rm Z/$1 Z/$2 Z/$3;
		else
	    	if (( $# == 5 ))
	    	then
				grep $1 */*.md > Z/$1;
				grep $1 *.html >> Z/$1;
		
				grep $2 Z/$1 > Z/$2;
				grep $3 Z/$2 >> Z/$3;
				grep $4 Z/$3 >> Z/$4;
				grep $5 Z/$4 >> Z/$1$2$3$4$5.txt;
				rm Z/$1 Z/$2 Z/$3 Z/$4;
		
	    	fi;
	    fi;
	fi;
    fi;
fi;