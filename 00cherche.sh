#!/bin/bash

./0date.sh
./0supprZ.sh


# nb bis
list99=( 
# >= 100
"Earthmix space _1" "The voice no _7" "The voice finland _12" "5515 never too late _1" "F4 thailand _1" "Rpdr _14" 
# 99-50
"The voice ph _1" "Young sheldon _5" "Tbbt _11" 
# 49-40
"The voice fr _12" "Camping paradis _12" 
# 39-30
"Cupids last wish _1" "American idol _20" "Cutie pie _1" "The voice ukr _12" 
# 29-20
"Forcebook show real _1" "Top chef _13" "/9-1-1 lone star _3" "Koh-lanta _28" "Meet my angel _2" "Something in my room _1" "The voice kids ger _10" "The player _1" "7project _1" "/9-1-1 _5" 
# 19-15
"Enchante _1" "Love stage 2022 _1" "Unlocked _1" "The shipper _1" 
# 14-10
"All of us are dead _1" "Domino masters us _1" "District z _2" "The masked singer _7" "Baker boys _1" "The voice nl _12" "Aoki vuanpaia no nayami _1" "The case study of vanitas _1" "Post mortem _1" "Buffy _1" "Lucifer _4" 
# 9-8
"Love at night _1" "Drag i love you _1" 
# 7-6
"Asc _1" "The tuxedo _1" "Aggretsuko _4" "Les engages _3" "My sweet dear _1" "Love area _1" "Goblin _1" 
# 5-4
"Cherry blossoms after winter _1" "The voice kids poland _5" "Survivor _42" "Color rush _2" "Age of the living dead _1" "Insiders _1" "The big leap _1" "Alice in borderland _1" 
# 3-2
"Drag race esp _2" "Dear doctor _1" "The voice kids vv _6" "Banana fish _1" 
# 0-1
"The masked singer fr _3" 
# other
"Bite me _1" "Vwars _1" "Qforce _1" "The yearbook _1" "From dusk till dawn _2" 
"Control z _2" "46 days _1" "Glow up _2" "Zombie detective _1" 
"Young royals _1" "Siew sum noi _1" "Elite _4" "Dark blue kiss _1" "Vincenzo _1" 
"An eye for an eye _1" "Mr lipstick _1" "Bt21 vlog _1" 
"You never eat alone _1" "My vampire boyfriend _1" "Tokyo ghoul _3" "Bangkok love stories innocence _1" "The harvest season _1" 
"Wabi show _1" "The untamed _1" "Slam dance _1" "Be love _1" "Tien bromance _1" 
"Ben x jim _1" "Koishite akuma _1" )

listAsc=( 
# 1
"The masked singer fr _3"  "The voice kids poland _5" "The voice finland _12" "Drag race esp _2" "The voice fr _12" 
# 2
"Cutie pie _1" "Dear doctor _1" "The voice kids ger _10" "The voice kids vv _6" 
# 3
"Rpdr _14" "Forcebook show real _1" "The voice no _7" "The masked singer _7" 
# 4
"Top chef _13" "American idol _20" "Asc _1" 
# 5
"Koh-lanta _28" "Cupids last wish _1" "Earthmix space _1" 
# 6
"Domino masters us _1" "Drag i love you _1" "Survivor _42" "The tuxedo _1" "Cherry blossoms after winter _1" 
# 7
"The voice ukr _12" "Enchante _1" "Something in my room _1" "F4 thailand _1" "Love stage 2022 _1" 
# 8
"All of us are dead _1" "/9-1-1 lone star _3" "Meet my angel _2" 
# 9
"The voice ph _1" "Love at night _1" "Color rush _2" "The voice nl _12" "Young sheldon _5" 
# 10
"5515 never too late _1" "The player _1" "District z _2" "Unlocked _1" 
# 11
"Aggretsuko _4" "Camping paradis _12" "Baker boys _1" "Les engages _3" "The case study of vanitas _1" 
# 12
"Banana fish _1" "Tbbt _11" "Aoki vuanpaia no nayami _1" "My sweet dear _1" "Insiders _1" 
# 13
"Age of the living dead _1" "/9-1-1 _5" "Love area _1" "The shipper _1" "Goblin _1" 
# 14
"7project _1" "The big leap _1" "Post mortem _1" "Alice in borderland _1" "Buffy _1" 
# 15
"Lucifer _4" "Bite me _1" "Vwars _1" "Qforce _1" "The yearbook _1" 
# 16
"From dusk till dawn _2" "Control z _2" "46 days _1" "Glow up _2" 
# 17
"Zombie detective _1" "Young royals _1" "Siew sum noi _1" "Elite _4" "Dark blue kiss _1" 
# 18
"Vincenzo _1" "An eye for an eye _1" "Mr lipstick _1" "Bt21 vlog _1" 
# 19
"You never eat alone _1" "My vampire boyfriend _1" "Tokyo ghoul _3" "Bangkok love stories innocence _1" "The harvest season _1" 
# 20
"Wabi show _1" "The untamed _1" "Slam dance _1" "Be love _1" "Tien bromance _1" 
# 21
"Ben x jim _1" "Koishite akuma _1" "Warper series _1" "Romantic blue _1" "Friend zone _1" 
# 22
"Together with me _1" "Ghost runner _1" 
)

listAV=( 
# jan
"Drag latina _1" "Rainbow prince _1" 
# fev
# mar
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
