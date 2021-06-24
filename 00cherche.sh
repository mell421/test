#!/bin/bash

./0date.sh
./0supprZ.sh

list=( "Unbag _1" "Wabi vlog _1" # >= 100
"Survivor au _4" "Ydestiny _1" # 99 - 50
"Nitiman _1" "Wtfock _5" # 49 - 40
"Fish upon the sky _1" "Bt21 original story _1" "Skam fr _8" # 39 - 30
"My vampire boyfriend _1" # 29 - 20
"Lego masters _2" "Drag race esp _1" "Crime scene kitchen _1" "Precise shot _1" "The harvest season _1" "TharnType _2" "Vincenzo _1" "Love in time _1" # 19 - 15
"Mental _1" "Pearl next door _1" "Be love _1" "Elite _4" "Friend or lover _1" "Bt21 vlog _1" "Wabi show _1" ) # 14 - 10

# entre 9 et 1
listBis=( "Agt _16" # 9
"Schools out lets date now _1" "Tokyo ghoul _3" # 8
"The cube _1" "Beat shazam _4" "You never eat alone _1" # 7
"Mr lipstick _1" "The untamed _1" # 6
"The shipper _1" # 5
"Kaamelott _6" "Dark blue kiss _1" "I can see your voice fr _1" "Unlocked _1" # 4
"Slam dance _1" # 3

) 


# 0
list2=( "Stuck on you _1" "An eye for an eye _1" "Bangkok love stories innocence _1" "Tbbt _11" # 2
"" # 1
"Siew sum noi _1" ) # 0

listAtt=( "" )

listOld=( "Tien bromance _1" "Ben x jim _1" "Koishite akuma _1" "Warper series _1" "Romantic blue _1" "Friend zone _1" "Rpdru _9" 
"Together with me _1" "Ghost runner _1" "Josephine ange gardien _23" "Capture lover _1" "From dusk till dawn _2" "Lakan _1" 
"A queen is born _1" "Tale of the nine tailed _1" "Pogi lang hanap _1" "Blood _1" "The good doctor _4" "Swap test _1" "The stranded _1" 
"Friend forever _1" "Boys lockdown _1" )


# echo "" > 0graph.dat
for i in "${list[@]}"
do
    echo "i =" $i
    ./0chercherSerie.sh $i 
    ./0chercherSerieBis.sh ${i,,} 
    
done

for i in "${listBis[@]}"
do
    echo "j =" $i
    ./0chercherSerie.sh $i 
    ./0chercherSerieBis.sh ${i,,} 
done

# echo "" > logChercher
# for i in "${list[@]}"
# do
#     echo "i =" $i >> logChercher
#     # echo "count : " $(wc Z/$(echo $i | tr -d ' ' )) >> logChercher
#     echo "ligne : " $(wc -l Z/$(echo $i | tr -d ' ' )) >> logChercher
#     echo "mot   : " $(wc -w Z/$(echo $i | tr -d ' ' )) >> logChercher
#     echo "carac : " $(wc -c Z/$(echo $i | tr -d ' ' )) >> logChercher
#     # echo $(echo $i | tr -d ' ' ) $(wc Z/$(echo $i | tr -d ' ')) >> 0graph.dat
#     echo "" >> logChercher
#     echo "j =" $i
# done
