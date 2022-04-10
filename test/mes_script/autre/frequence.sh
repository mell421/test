#!/usr/bin/env bash

if (( $# != 1 ))
then
    echo "Usage, <fichier>";
else
    echo "DEBUT DU FICHIER";
    sed -e 's/\.//g'  -e 's/\,//g' -e 's/ /\
/g' $1 | tr 'A-Z' 'a-z' | sort | uniq -c | sort -nr;
    echo "FIN DU FICHIER";
fi;
