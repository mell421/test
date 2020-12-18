#!/bin/bash
./0supprZ.sh
list=( "Lls" "Ingredients" "The voice germany" "Strictly come dancing" "Gameboys" "Wish you" )

echo " " > logChercher

for i in "${list[@]}"
do
    echo "i =" $i >> logChercher
    ./0chercherSerie.sh $i
   
done

echo " " >> logChercher
for i in "${list[@]}"
do
    echo "i =" $i >> logChercher
    
    if [[ -f Z/$i ]]
    then
        echo "count : " $(wc Z/$i) >> logChercher
    else
        j = "$(echo $i | tr '[:blank:]' ' ' )"
        # i = $(sed 's/""/" "' $i)
        echo "j =" $j >> logChercher
    fi;
    
    echo " " >> logChercher

done


