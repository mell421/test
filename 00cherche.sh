#!/bin/bash
./0supprZ.sh
list=( "Lls" "Ingredients" "The voice germany" "Strictly come dancing" "Gameboys" "Wish you" )
li0=${list[0]}
./0chercherSerie.sh $li0
li1=${list[1]}
./0chercherSerie.sh $li1
li2=${list[2]}
./0chercherSerie.sh $li2
li3=${list[3]}
./0chercherSerie.sh $li3
li4=${list[4]}
./0chercherSerie.sh $li4
li5=${list[5]}
./0chercherSerie.sh $li5


# for i in "${list[@]}"
# do
#     echo "i =" $i > logChercher
#     exec "./0chercherSerie.sh $i"   
# done



