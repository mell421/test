#!/bin/bash

./0date.sh
./0supprZ.sh
# >= 10
list=( "Lls _1" 
"Unbag _1" "Sweet home _1" "Manner of death _1" "The voice nl _11" "Love stage 2014 _1" "Druck _6" "Friend.ship with kristsingto _1" "Rpdru _9" 
"Sea him _1" "Happenstance _1" "History2 right or wrong _1" "We best love _1" "TharnType _2" "Ghost runner _1" )

# entre 4 et 9
listBis=( "Koishite akuma _1" "Friend zone _1" "Nations brother _1" "Young sheldon _4" 
"The masked singer uk _2" "Pearl next door _1" 
"The voice be _9" 
"The masked dancer _1" 
"Mako ventures _1" "The voice uk _10" "Capture lover _1" 
"You are ma boy _1" "The voice no _6" "Rpdru _13" )

listAtt=( "Friend forever _1" "My vampire boyfriend _1" "Blood _1" 
"Pogi lang hanap _1" "Be love _1" "Lakan _1" "From dusk till dawn _2" )

echo " " > logChercher
# echo "" > 0graph.dat
for i in "${list[@]}"
do
    ./0chercherSerie.sh $i 
done

for i in "${listBis[@]}"
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
