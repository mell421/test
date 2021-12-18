#!/bin/bash

./0date.sh
./0supprZ.sh


# nb bis
list99=( "Unbag _1" "The voice greece _8" "Dont say no _1" # >= 200
"The voice ger _11" "The voice esp _8" "Peach of time _1" # 199-100
"Kieta hatsukoi _1" "Inhuman condition _1" "Survivor au _6" "Dragula _4" "The voice portugal _9" # 99-50
"Incroyable talent _16" # 49-40
"Tbbt _11" "Rpdruk _3" "Earthmix space _1" "Camping paradis _12" "Bad buddy _1" # 39-30
"Dexter _9" "Do seu lado _1" "5515 never too late _1" "7project _1" "/9-1-1 _5" # 29-20
"Painted with raven _1" "The shipper _1" "Druck _7" "Paint with love _1" # 19-15
"The voice senior it _2" "Aoki vuanpaia no nayami _1" "Queen of the universe _1" "Drag race it _1" "Young sheldon _5" "Mr cinderella _1" "The case study of vanitas _1" "Baker boys _1" "Post mortem _1" # 14-10
"Unlocked _1" # 9-8
"My sweet dear _1" "Love area _1" "Not me _1" "Les engages _3" "Goblin _1" # 7-6
"Age of the living dead _1" "Insiders _1" "The big leap _1" "Alice in borderland _1" # 5-4
"Aggretsuko _4" "District z _2" "Banana fish _1" # 3-2
"F4 thailand _1" # 0-1
#other
"Josephine ange gardien _24" "Buffy _1" "Lucifer _4" "Bite me _1" "Vwars _1" 
"Qforce _1" "The yearbook _1" "From dusk till dawn _2" "Good singers _1" "Control z _2" 
"46 days _1" "Glow up _2" "Zombie detective _1" "Young royals _1" "Siew sum noi _1" 
"Elite _4" "Dark blue kiss _1" "Vincenzo _1" "An eye for an eye _1" "I can see your voice fr _1" 
"Mr lipstick _1" "Bt21 vlog _1" "Schools out lets date now _1" "You never eat alone _1" "My vampire boyfriend _1" 
"Tokyo ghoul _3" "Bangkok love stories innocence _1" "The harvest season _1" "Wabi show _1" "The untamed _1" 
"Slam dance _1" "Be love _1" "Tien bromance _1" "Ben x jim _1" "Koishite akuma _1" )

listAsc=( 
# 1
"F4 thailand _1" "The voice senior it _2" "Unlocked _1" "Paint with love _1" "Earthmix space _1" 
# 2
"Bad buddy _1" "Painted with raven _1" "Aggretsuko _4" "Queen of the universe _1" "Incroyable talent _16" 
# 3
"Dragula _4" "The voice greece _8" "The voice ger _11" "The voice portugal _9" 
# 4
"Dexter _9" "5515 never too late _1" "Not me _1" "Mr cinderella _1" "The voice esp _8" 
# 5
"Unbag _1" "Do seu lado _1" "Camping paradis _12" "Rpdruk _3" "District z _2" 
# 6
"Drag race it _1" "Baker boys _1" "Kieta hatsukoi _1" "Les engages _3" "The case study of vanitas _1" 
# 7
"Druck _7" "Banana fish _1" "Tbbt _11" "Aoki vuanpaia no nayami _1" "Young sheldon _5" 
# 8
"My sweet dear _1" "Insiders _1" "Age of the living dead _1" "Inhuman condition _1" "Survivor au _6" 
# 9
"/9-1-1 _5" "Love area _1" "Dont say no _1" "The shipper _1" "Goblin _1" 
# 10
"7project _1" "The big leap _1" "Post mortem _1" "Alice in borderland _1" "Peach of time _1" 
# 11
"Josephine ange gardien _24" "Buffy _1" "Lucifer _4" "Bite me _1" "Vwars _1" 
# 12
"Qforce _1" "The yearbook _1" "From dusk till dawn _2" "Good singers _1" "Control z _2" 
# 13
"46 days _1" "Glow up _2" "Zombie detective _1" "Young royals _1" "Siew sum noi _1" 
# 14
"Elite _4" "Dark blue kiss _1" "Vincenzo _1" "An eye for an eye _1" "I can see your voice fr _1" 
# 15
"Mr lipstick _1" "Bt21 vlog _1" "Schools out lets date now _1" "You never eat alone _1" "My vampire boyfriend _1" 
# 16
"Tokyo ghoul _3" "Bangkok love stories innocence _1" "The harvest season _1" "Wabi show _1" "The untamed _1" 
# 17
"Slam dance _1" "Be love _1" "Tien bromance _1" "Ben x jim _1" "Koishite akuma _1" 
# 18
"Warper series _1" "Romantic blue _1" "Friend zone _1" "Together with me _1" "Ghost runner _1" 
)

listAV=( 
# dec
"The player _1" "The voice kids uk _5" "Lego masters fr _2" "The voice be _10" 
# jan
"The masked singer uk _3" "/9-1-1 lone star _3" "I can see your voice _2" "Ninja warrior _6" "The voice nl _12" "The voice no _7" "Rpdr _14" "Rpdru _14" "Rainbow prince _1" 
# fev
"Asc _1" 
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
