#!/bin/bash
./0supprZ.sh
list=( "Lls" "Ingredients" "The voice germany" 
"Gameboys" "Wish you" 
"Unbag" 
"Pogi lang hanap" "Friend forever" "The voice senior it" 
"My vampire boyfriend" "Bt21 universe" "The voice nl" 
"Cheat" "Young sheldon" "Be love" "Blood" "TharnType" "Sea him" )

echo " " > logChercher
echo "" > 0graph.dat
for i in "${list[@]}"
do
    ./0chercherSerie.sh $i 
done

echo "" >> logChercher
for i in "${list[@]}"
do
    echo "i =" $i >> logChercher
    # echo "count : " $(wc Z/$(echo $i | tr -d ' ' )) >> logChercher
    echo "ligne : " $(wc -l Z/$(echo $i | tr -d ' ' )) >> logChercher
    echo "mot   : " $(wc -w Z/$(echo $i | tr -d ' ' )) >> logChercher
    echo "carac : " $(wc -c Z/$(echo $i | tr -d ' ' )) >> logChercher
    echo $(echo $i | tr -d ' ' ) $(wc Z/$(echo $i | tr -d ' ')) >> 0graph.dat
    echo " " >> logChercher
done
