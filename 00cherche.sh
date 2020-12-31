#!/bin/bash

./0date.sh
./0supprZ.sh
list=( "Lls _1" "Ingredients _1" "Unbag _1" "Gameboys _1" "The voice nl _11" 
"Offgun fun night _2" "Cheat _1" "Meet me outside _1" "From dusk till dawn _2" "Sweet home _1" 
"Love stage 2014 _1" "Pogi lang hanap _1" "Young sheldon _4" "Be love _1" "Lakan _1" 
"Sea him _1" "Manner of death _1" "TharnType _2" "Friend zone _1" "Capture lover _1" )

list2=( "" "" "Friend forever _1" "My vampire boyfriend _1" "Bt21 universe _1" "Blood _1" )

echo " " > logChercher
# echo "" > 0graph.dat
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
    # echo $(echo $i | tr -d ' ' ) $(wc Z/$(echo $i | tr -d ' ')) >> 0graph.dat
    echo " " >> logChercher
done
