#!/bin/bash

./0date.sh
./0supprZ.sh


# nb bis
list99=( 
# >= 100
"Earthmix space _1" "The voice no _7" "The voice finland _12" "Peach of time _1" "The voice be _10" "5515 never too late _1" "F4 thailand _1" "Rpdru _14" "Rpdr _14" 
# 99-50
"Dancing on ice uk _14" "Survivor au _9" "Young sheldon _5" "Tbbt _11" 
# 49-40
"The voice ph _1" "Camping paradis _12" 
# 39-30
"The voice fr _12" "Cupids last wish _1" "The voice ukr _12" 
# 29-20
"Pekin express _15" "Cutie pie _1" "/9-1-1 lone star _3" "American idol _20" "Forcebook show real _1" "Meet my angel _2" "Something in my room _1" "Koh-lanta _28" "Top chef _13" "The player _1" "7project _1" "/9-1-1 _5" 
# 19-15
"Enchante _1" "Love stage 2022 _1" "Unlocked _1" "The shipper _1" 
# 14-10
"The voice kids ger _10" "All of us are dead _1" "You are my sunshine _1" "Domino masters us _1" "District z _2" "Baker boys _1" "The voice nl _12" "Aoki vuanpaia no nayami _1" "The case study of vanitas _1" "Post mortem _1" "Buffy _1" "Lucifer _4" 
# 9-8
"Love at night _1" "Drag i love you _1" 
# 7-6
"The masked singer _7" "The tuxedo _1" "Aggretsuko _4" "Les engages _3" "My sweet dear _1" "Love area _1" "Goblin _1" 
# 5-4
"Cherry blossoms after winter _1" "Survivor _42" "Color rush _2" "Age of the living dead _1" "Insiders _1" "The big leap _1" "Alice in borderland _1" 
# 3-2
"Absolute bl _1" "Banana fish _1" 
# 0-1
"Asc _1"
# other
"Bite me _1" "Vwars _1" "Qforce _1" "The yearbook _1" "From dusk till dawn _2" 
"Good singers _1" "Control z _2" "46 days _1" "Glow up _2" "Zombie detective _1" 
"Young royals _1" "Siew sum noi _1" "Elite _4" "Dark blue kiss _1" "Vincenzo _1" 
"An eye for an eye _1" "I can see your voice fr _1" "Mr lipstick _1" "Bt21 vlog _1" 
"You never eat alone _1" "My vampire boyfriend _1" "Tokyo ghoul _3" "Bangkok love stories innocence _1" "The harvest season _1" 
"Wabi show _1" "The untamed _1" "Slam dance _1" "Be love _1" "Tien bromance _1" 
"Ben x jim _1" "Koishite akuma _1" )

listAsc=( 
# 1
"F4 thailand _1" "Rpdru _14" "Rpdr _14" 
# 2
"The voice nl _12" "The voice no _7" "The voice be _10" 
# 3
"/9-1-1 lone star _3" "Young sheldon _5" "5515 never too late _1" "The player _1" "You are my sunshine _1" 
# 4
"Earthmix space _1" "District z _2" "Unlocked _1" "Aggretsuko _4" "Camping paradis _12" 
# 5
"Baker boys _1" "Les engages _3" "The case study of vanitas _1" "Banana fish _1" 
# 6
"Tbbt _11" "Aoki vuanpaia no nayami _1" "My sweet dear _1" "Insiders _1" "Age of the living dead _1" 
# 7
"/9-1-1 _5" "Love area _1" "The shipper _1" "Goblin _1" "7project _1" 
# 8
"The big leap _1" "Post mortem _1" "Alice in borderland _1" "Peach of time _1" "Buffy _1" 
# 9
"Lucifer _4" "Bite me _1" "Vwars _1" "Qforce _1" "The yearbook _1" 
# 10
"From dusk till dawn _2" "Good singers _1" "Control z _2" "46 days _1" "Glow up _2" 
# 11
"Zombie detective _1" "Young royals _1" "Siew sum noi _1" "Elite _4" "Dark blue kiss _1" 
# 12
"Vincenzo _1" 
# 13
# 14
# 15
# 16
"An eye for an eye _1" "I can see your voice fr _1" "Mr lipstick _1" "Bt21 vlog _1" 
# 17
"You never eat alone _1" "My vampire boyfriend _1" "Tokyo ghoul _3" "Bangkok love stories innocence _1" "The harvest season _1" 
# 18
"Wabi show _1" "The untamed _1" "Slam dance _1" "Be love _1" "Tien bromance _1" 
# 19
"Ben x jim _1" "Koishite akuma _1" "Warper series _1" "Romantic blue _1" "Friend zone _1" 
# 20
"Together with me _1" "Ghost runner _1" 
)

listAV=( 
# jan
"Drag latina _1" 
"Rainbow prince _1" "Color rush _2" 
"The masked singer fr _3" "Survivor au _9" 
# fev
"Asc _1" "Queen stars brasil _1" 
# mar
"Survivor _42" 
# avr
"" "" "" "" "" )

listOld=( "Capture lover _1" "Lakan _1" "A queen is born _1" "Tale of the nine tailed _1" "Pogi lang hanap _1" 
"Blood _1" "Swap test _1" "The stranded _1" "Friend forever _1" "Boys lockdown _1" )

echo "" > logChercher.txt
for i in "${list99[@]}"
do
    echo "i =" $i
    ./0chercherSerie.sh $i 
    ./0chercherSerieBis2.sh ${i,,} 
        echo "i =" $i >> logChercher.txt
        # echo "count : " $(wc ZZ/$(echo $i | tr -d ' ' )) >> logChercher
        echo "ligne : " $(wc -l ZZ/$(echo $i.txt | tr -d ' ' )) >> logChercher.txt
        echo "mot   : " $(wc -w ZZ/$(echo $i.txt  | tr -d ' ' )) >> logChercher.txt
        echo "carac : " $(wc -c ZZ/$(echo $i.txt  | tr -d ' ' )) >> logChercher.txt
        echo "" >> logChercher.txt
    
done
echo "cat sep nb fichier" > logChercherRes.txt
sort -n logChercher.txt | uniq >> logChercherRes.txt

# for i in "${list99[@]}"
# do
#     echo "j =" $i
#     ./0chercherSerie.sh $i 
#     ./0chercherSerieBis.sh ${i,,} 
# done
