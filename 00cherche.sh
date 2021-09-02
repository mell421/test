#!/bin/bash

./0date.sh
./0supprZ.sh

list=( "Unbag _1" "Bt21 original story _1" # >= 100
"Survivor au _5" "Survivor au _8" "Agt _16" "" # 99 - 50
"/46 days _1" # 49 - 40
"The cube _1" "Lego masters _2" "" # 39 - 30
"My vampire boyfriend _1" "Survivor sa _8" # 29 - 20
"The voice au _10" "Vincenzo _1" "The harvest season _1" "Elite _4" # 19 - 15
"Bt21 vlog _1" "Wabi show _1" # 14 - 10
"" # 9
"Schools out lets date now _1" "Tokyo ghoul _3" # 8
"Good singers _1" "You never eat alone _1" # 7
"Control z _2" "Camping paradis _12" "Mr lipstick _1" "The untamed _1" # 6
"Zombie detective _1" "Dark blue kiss _1" "The shipper _1" # 5
"Glow up _2" "Young royals _1" "I can see your voice fr _1" "Unlocked _1" # 4
"Josephine ange gardien _24" "Slam dance _1" # 3
"Dont say no _1" "Drag race nl _2" "Siew sum noi _1" "An eye for an eye _1" "Bangkok love stories innocence _1" "Tbbt _11" # 2
"" # 1
"" # 0
)  


# nb bis
list99=( "Unbag _1" "Bt21 original story _1" # >= 200
"My vampire boyfriend _1" "Agt _16" "The cube _1" "Lego masters _2" "Survivor au _5" "Survivor au _8" # 199-100
"46 days _1" "Vincenzo _1" "The harvest season _1" # 99-50
"Survivor sa _8" "" # 49-40
"Koishite akuma _1" "Be love _1" # 39-30
"The voice au _10" "Elite _4" "" # 29-20
"Schools out lets date now _1" "You never eat alone _1" "Good singers _1" "Camping paradis _12" # 19-15
"Dont say no _1" "Drag race nl _2" "Dark blue kiss _1" "Bt21 vlog _1" "Wabi show _1" "Tokyo ghoul _3" "Glow up _2" "The shipper _1" "Zombie detective _1" # 14-10
"Control z _2" "I can see your voice fr _1" "Mr lipstick _1" "Ben x jim _1" "" # 9
"Unlocked _1" "The untamed _1" "" # 8
"Young royals _1" "Tien bromance _1" "" # 7
"Slam dance _1" "" # 6
"Siew sum noi _1" "An eye for an eye _1" "Tbbt _11" "" # 5
"Bangkok love stories innocence _1" "" # 4
"" # 3
"" # 2
"" # 1
"" # 0
)



listOld=( "Tien bromance _1" "Ben x jim _1" "Koishite akuma _1" "Warper series _1" "Romantic blue _1" "Friend zone _1" 
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
