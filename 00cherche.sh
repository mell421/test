#!/bin/bash

./0date.sh
./0supprZ.sh

list=( "Unbag _1" "Bt21 original story _1" # >= 100
"Dont say no _1" "" # 99 - 50
"The voice greece _8" "/46 days _1" # 49 - 40
"Peach of time _1" "The voice us _21" "Strictly come dancing _19" "" # 39 - 30
"My vampire boyfriend _1" "From dusk till dawn _2" # 29 - 20
"Vincenzo _1" "The harvest season _1" "Elite _4" # 19 - 15
"Koh-lanta _27" "Survivor au _6" "Dwts _30" "The voice bulgarie _8" "Survivor _8" "Bt21 vlog _1" "Wabi show _1" # 14 - 10
"" # 9
"The voice esp _8" "Inhuman condition _1" "Vwars _1" "Camping paradis _12" "Good singers _1" "Schools out lets date now _1" "Tokyo ghoul _3" # 8
"La mas draga _4" "Survivor _41" "7project _1" "Control z _2" "You never eat alone _1" # 7
"Mr lipstick _1" "The untamed _1" # 6
"Glow up _2" "Zombie detective _1" "Dark blue kiss _1" "The shipper _1" # 5
"Lucifer _4" "Young royals _1" "I can see your voice fr _1" "Unlocked _1" # 4
"Post mortem _1" "Josephine ange gardien _24" "Slam dance _1" # 3
"Bite me _1" "The yearbook _1" "Siew sum noi _1" "An eye for an eye _1" "Bangkok love stories innocence _1" "Tbbt _11" # 2
"Qforce _1" # 1
"" # 0
)  


# nb bis
list99=( "Unbag _1" "Bt21 original story _1" # >= 200
"Dont say no _1" # 199-100
"Peach of time _1" "The voice greece _8" "Strictly come dancing _19" "The voice us _21" "Survivor _8" "Koh-lanta _27"  # 99-50
"Vwars _1" "The voice bulgarie _8" # 49-40
"Dwts _30" # 39-30
"The voice esp _8" "Survivor _41" "La mas draga _4" "7project _1" "" # 29-20
"Dals _11" "/9-1-1 _5" "Alter ego _1" "The masked singer _6" "Survivor au _6" "Earthmix space _1" "The shipper _1" # 19-15
"Josephine ange gardien _24" "Bite me _1" "The voice ger _11" "Inhuman condition _1" "Post mortem _1" "Buffy _1" "Lucifer _4" # 14-10
"" # 9
"Aoki vuanpaia no nayami _1" "" # 8
"Qforce _1" "" # 7
"Munch _4" "Kieta hatsukoi _1" "Love area _1" "Goblin _1" "" # 6
"The voice portugal _9" "" # 5
"Drag race ca _2" "Rpdruk _3" "The big leap _1" "Alice in borderland _1" "" # 4
"Incroyable talent _16" "Age of the living dead _1" "Young sheldon _5" "" # 3
"Bite sisters _1" "Insiders _1" "Dragula _4" "" # 2
"" # 1
"The masked singer ger _5" "Midnight mass _1" "" # 0
"" #other
"My vampire boyfriend _1" "46 days _1" 
"Vincenzo _1" "The harvest season _1" "From dusk till dawn _2" 
"Elite _4" "Koishite akuma _1" "Be love _1" "Camping paradis _12" 
"Schools out lets date now _1" "You never eat alone _1" "Good singers _1" 
"Dark blue kiss _1" "Bt21 vlog _1" "Wabi show _1" "Glow up _2" "Tokyo ghoul _3" "Control z _2" "Zombie detective _1" 
"I can see your voice fr _1" "Mr lipstick _1" "Ben x jim _1" "Unlocked _1" "The untamed _1" 
"Young royals _1" "Tien bromance _1" "The yearbook _1" "Slam dance _1" "Siew sum noi _1" "An eye for an eye _1" "Tbbt _11" 
"Bangkok love stories innocence _1" )

listOld1=( )


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
