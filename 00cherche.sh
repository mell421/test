#!/bin/bash

./0date.sh
./0supprZ.sh
list=( "Lls _1" "Ingredients _1" "Unbag _1" "Gameboys _1" 
"The voice nl _11" "Pogi lang hanap _1" "Friend forever _1" "Cheat _1" "My vampire boyfriend _1" 
"Bt21 universe _1" "Sweet home _1" "Young sheldon _4" "Be love _1" 
"Blood _1" "Lakan _1" "Sea him _1" "TharnType _2" )
list2=( "" "" )

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
