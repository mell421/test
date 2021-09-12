#!/bin/bash

./0date.sh
./0supprZ.sh

list=( "Unbag _1" "Bt21 original story _1" "Survivor au _5" # >= 100
"Agt _16" "Survivor au _8" "" # 99 - 50
"Survivor sa _8" "/46 days _1" # 49 - 40
"Lego masters _2" "" # 39 - 30
"My vampire boyfriend _1" "From dusk till dawn _2" # 29 - 20
"Vincenzo _1" "The harvest season _1" "Elite _4" # 19 - 15
"Dont say no _1" "Peach of time _1" "Aggretsuko _3" "Bt21 vlog _1" "Wabi show _1" # 14 - 10
"" # 9
"Ahs _10" "The good doctor _4" "Good singers _1" "Schools out lets date now _1" "Tokyo ghoul _3" # 8
"Drag race nl _2" "Camping paradis _12" "Control z _2" "You never eat alone _1" # 7
"Mr lipstick _1" "The untamed _1" # 6
"Glow up _2" "Zombie detective _1" "Dark blue kiss _1" "The shipper _1" # 5
"Young royals _1" "I can see your voice fr _1" "Unlocked _1" # 4
"Post mortem _1" "Josephine ange gardien _24" "Slam dance _1" # 3
"Survivor _8" "Koh-lanta _27" "Bite me _1" "The yearbook _1" "Siew sum noi _1" "An eye for an eye _1" "Bangkok love stories innocence _1" "Tbbt _11" # 2
"7project _1" "" # 1
"Qforce _1" "" # 0
)  


# nb bis
list99=( "Unbag _1" "Bt21 original story _1" "My vampire boyfriend _1" # >= 200
"Agt _16" "Survivor au _8" "Lego masters _2" "Survivor au _5" "46 days _1" # 199-100
"Survivor sa _8" "Vincenzo _1" "The harvest season _1" "From dusk till dawn _2" # 99-50
"" # 49-40
"Dont say no _1" "Koishite akuma _1" "Be love _1" "Drag race nl _2" # 39-30
"Elite _4" "" # 29-20
"Camping paradis _12" "Schools out lets date now _1" "Peach of time _1" "You never eat alone _1" "The good doctor _4" "Aggretsuko _3" "Good singers _1" "Ahs _10" # 19-15
"Dark blue kiss _1" "Bt21 vlog _1" "Wabi show _1" "Glow up _2" "Tokyo ghoul _3" "Control z _2" "The shipper _1" "Zombie detective _1" # 14-10
"Koh-lanta _27" "I can see your voice fr _1" "Mr lipstick _1" "Ben x jim _1" "" # 9
"Unlocked _1" "The untamed _1" "" # 8
"Young royals _1" "Tien bromance _1" "" # 7
"7project _1" "The yearbook _1" "Slam dance _1" "" # 6
"Bite me _1" "Post mortem _1" "Josephine ange gardien _24" "Siew sum noi _1" "An eye for an eye _1" "Tbbt _11" "" # 5
"Bangkok love stories innocence _1" "" # 4
"Survivor _8" "" # 3
"" # 2
"Qforce _1" "" # 1
"" # 0
)



listOld=( "Tien bromance _1" "Ben x jim _1" "Koishite akuma _1" "Warper series _1" "Romantic blue _1" "Friend zone _1" 
"Together with me _1" "Ghost runner _1" "Capture lover _1" "Lakan _1" 
"A queen is born _1" "Tale of the nine tailed _1" "Pogi lang hanap _1" "Blood _1" "Swap test _1" "The stranded _1" 
"Friend forever _1" "Boys lockdown _1" )


# echo "" > 0graph.dat
for i in "${list99[@]}"
do
    echo "i =" $i
    ./0chercherSerie.sh $i 
    ./0chercherSerieBis.sh ${i,,} 
    
done

# for i in "${list99[@]}"
# do
#     echo "j =" $i
#     ./0chercherSerie.sh $i 
#     ./0chercherSerieBis.sh ${i,,} 
# done

# echo "" > logChercher
# for i in "${list99[@]}"
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
