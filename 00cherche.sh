#!/bin/bash

./0date.sh
./0supprZ.sh


# nb bis
list99=( 
# >= 100
"Big brother us _24" "Dont forget the lyrics _1" 
# 99-50
"The voice dominicana _2" "Big brother us _23" "Two pints of lager _3" 
# 49-40
"His man _1" "The challenge _4" 
# 39-30
"Tokyo ghoul _3" 
# 29-20
"Unforgotten night _1" 
# 19-15
"Blueming _1" "Agt _17" "Close friend _2" 
# 14-10
"Rpdrasu _7" "Rpdras _7" "Rpdrdu _2" "Sky in your heart _1" 
# 9-8
"The voice ger _12" "Game of talents fr _2" "The voice senior peru _2" 
# 7-6
"Love in the air _1" "The eclipse _1" "The amazing race _32" "Second chance series _1" 
# 5-4
"Rpscdr _2" "God shave the queens _2" "Grimm _1" "Rose in da house _1" "Survivor _31" 
# 3-2
"Masterchef fr _6" "Juad juad _1" "Drag race ph _1" 
# 0-1
# other
"5515 never too late _1" "F4 thailand _1" "Cupids last wish _1" "The voice ph _1" 
"/9-1-1 _5" "Trivia quest _1" "Young sheldon _5" "Tbbt _11" 
"The circle us _4" 
"/9-1-1 lone star _3" "Bulgasal _1" "The voice ukr _12" 
"Beat shazam _2" "Meet my angel _2" "Something in my room _1" "The player _1" "7project _1" 
"Druck _8" "Love stage 2022 _1" "Unlocked _1" "The shipper _1" 
"Dancing with myself _1" "All of us are dead _1" "The voice nl _12" "District z _2" "Baker boys _1" "Aoki vuanpaia no nayami _1" "The case study of vanitas _1" "Post mortem _1" "Buffy _1" "Lucifer _4" 
"Camping paradis _13" "Drag i love you _1" "Love at night _1" 
"Mama gogo _1" "The voice kids indonesia _4" "Love mechanics _1" "Bullshit the game show _1" "The tuxedo _1" "Aggretsuko _4" "Les engages _3" "My sweet dear _1" "Love area _1" "Goblin _1" 
"Want to see you _1" "Clik clak clok _1" "Call me mother _1" "Cherry blossoms after winter _1" "Color rush _2" "Age of the living dead _1" "Insiders _1" "The big leap _1" "Alice in borderland _1" 
"Quaranthings _2" "Banana fish _1" 
"" )

listOld=(
"Bite me _1" "Vwars _1" "Qforce _1" "The yearbook _1" "From dusk till dawn _2" 
"Control z _2" "46 days _1" "Glow up _2" "Zombie detective _1" "Young royals _1" 
"Siew sum noi _1" "Elite _4" "Dark blue kiss _1" "Vincenzo _1" "An eye for an eye _1" 
"Mr lipstick _1" "Bt21 vlog _1" "You never eat alone _1" "My vampire boyfriend _1" "Bangkok love stories innocence _1" 
"The harvest season _1" "Wabi show _1" "The untamed _1" "Slam dance _1" "Be love _1" 
"Tien bromance _1" "Ben x jim _1" "Koishite akuma _1")

listAV=( 
# jan
"Drag latina _1" "Rainbow prince _1" 
# fev
# mar
# avr
"Skam italia _5" "The voice poland _13" "The voice bulgarie _9" "Dals _12" "Vampire academy _1" 
"Strictly come dancing _20" "Dwts _31" "The voice us _22" "Lego masters _3" "Survivor _43" 
"The amazing race _34" "The masked singer _8" "Interviex with the vampire _1" "The voice portugal _10" "Nailed it _7" 
"Reginald the vampire _1" "Ahs _11" "Drag race ca vs world _1" "Next in fashion _2" "Between us _1" 
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
