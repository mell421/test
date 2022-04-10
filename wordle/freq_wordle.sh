#!/usr/bin/env bash

if (( $# != 2 ))
then
    echo "Usage, <fichier> <fichier_dest>";
else
    echo "DEBUT DU FICHIER";
    sed 's/\(.\)/\1\n/g' $1 | tr '[:upper:]' '[:lower:]' | grep '[a-z]' | sort | uniq -c > $2;
    echo "FIN DU FICHIER";
fi;
