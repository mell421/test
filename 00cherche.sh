#!/bin/bash

./0date.sh
./0supprZ.sh

list=( "Unbag _1" # >= 100
"" # 99 - 50
"Bt21 original story _1" # 49 - 40
"Drag race esp _1" "Crime scene kitchen _1" # 39 - 30
"My vampire boyfriend _1" "Lego masters _2" "Kaamelott _6" # 29 - 20
"Beat shazam _4" "Agt _16" "The cube _1" "Rpdrasu _6" "Vincenzo _1" "The harvest season _1" "Elite _4" # 19 - 15
"Light on me _1" "Rpdras _6" "Stuck on you _1" "Bt21 vlog _1" "Wabi show _1" ) # 14 - 10

# entre 9 et 3
listBis=( "" # 9
"Schools out lets date now _1" "Tokyo ghoul _3" # 8
"You never eat alone _1" # 7
"Mr lipstick _1" "The untamed _1" # 6
"Dark blue kiss _1" "The shipper _1" # 5
"Drop _1" "Golden blood _1" "I can see your voice fr _1" "Unlocked _1" # 4
"Slam dance _1" # 3
) 


# 0
list2=( "Young royals _1" "Marble mania _1" "Siew sum noi _1" "An eye for an eye _1" "Bangkok love stories innocence _1" "Tbbt _11" # 2
"Camping paradis _12" # 1
"" ) # 0


# nb bis
list99=( "Unbag _1" # >= 200
"Bt21 original story _1" "My vampire boyfriend _1" # 199-100
"Crime scene kitchen _1" "Drag race esp _1" "The harvest season _1" "Lego masters _2" "Beat shazam _4" # 99-50
"Vincenzo _1" "Agt _16" "" # 49-40
"Koishite akuma _1" "Be love _1" "Kaamelott _6" "The cube _1" "Stuck on you _1" "" # 39-30
"Rpdrasu _6" "Elite _4" "Rpdras _6" "" # 29-20
"Schools out lets date now _1" "Light on me _1" "You never eat alone _1" "" # 19-15
"Dark blue kiss _1" "Bt21 vlog _1" "Wabi show _1" "Tokyo ghoul _3" "The shipper _1" "Golden blood _1" "" # 14-10
"Drop _1" "I can see your voice fr _1" "Mr lipstick _1" "Ben x jim _1" "" # 9
"Unlocked _1" "The untamed _1" "" # 8
"Marble mania _1" "Tien bromance _1" "" # 7
"Slam dance _1" "" # 6
"Siew sum noi _1" "An eye for an eye _1" "Tbbt _11" "" # 5
"Bangkok love stories innocence _1" "" # 4
"Young royals _1" "" # 3
"Camping paradis _12" "" # 2
"" # 1
"" # 0
)



listOld=( "Be love _1" "Tien bromance _1" "Ben x jim _1" "Koishite akuma _1" "Warper series _1" "Romantic blue _1" "Friend zone _1" 
"Together with me _1" "Ghost runner _1" "Capture lover _1" "From dusk till dawn _2" "Lakan _1" 
"A queen is born _1" "Tale of the nine tailed _1" "Pogi lang hanap _1" "Blood _1" "The good doctor _4" "Swap test _1" "The stranded _1" 
"Friend forever _1" "Boys lockdown _1" )


# echo "" > 0graph.dat
for i in "${list99[@]}"
do
    echo "i =" $i
    ./0chercherSerie.sh $i 
    ./0chercherSerieBis.sh ${i,,} 
    
done

# for i in "${listBis[@]}"
# do
#     echo "j =" $i
#     ./0chercherSerie.sh $i 
#     ./0chercherSerieBis.sh ${i,,} 
# done

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
