#!/bin/bash

./0date.sh
./0supprZ.sh


# nb bis
list99=( "Unbag _1" "The voice greece _8" "Dont say no _1" # >= 200
"Strictly come dancing _19" "The voice us _21" "Koh-lanta _27" "The voice ger _11" "Peach of time _1" # 199-100
"The voice esp _8" "The masked singer _6" "Survivor au _6" "Inhuman condition _1" "Kieta hatsukoi _1" # 99-50
# 49-40
"Survivor _41" "Tbbt _11" "The voice portugal _9" # 39-30
"Incroyable talent _16" "Earthmix space _1" "7project _1" "/9-1-1 _5" # 29-20
"Bad buddy _1" "The shipper _1" "Rpdruk _3" "Druck _7" # 19-15
"Drag race ca _2" "Aoki vuanpaia no nayami _1" "Young sheldon _5" "Dexter _9" "The case study of vanitas _1" "Post mortem _1" # 14-10
# 9-8
"My sweet dear _1" "Love area _1" "Drag race it _1" "Do seu lado _1" "Goblin _1" # 7-6
"Baker boys _1" "Les engages _3" "Age of the living dead _1" "Insiders _1" "Dragula _4" "The big leap _1" "Alice in borderland _1" # 5-4
"Painted with raven _1" "Banana fish _1" # 3-2
"The voice senior it _2" # 0-1
#other
"Vwars _1" "Josephine ange gardien _24" "Bite me _1" "Buffy _1" "Lucifer _4" "Qforce _1" 
"My vampire boyfriend _1" "46 days _1" "Vincenzo _1" "The harvest season _1" "From dusk till dawn _2" "Elite _4" 
"Koishite akuma _1" "Be love _1" "Camping paradis _12" "Schools out lets date now _1" "You never eat alone _1" "Good singers _1" 
"Dark blue kiss _1" "Bt21 vlog _1" "Wabi show _1" "Glow up _2" "Tokyo ghoul _3" "Control z _2" "Zombie detective _1" 
"I can see your voice fr _1" "Mr lipstick _1" "Ben x jim _1" "Unlocked _1" "The untamed _1" "Young royals _1" "Tien bromance _1" 
"The yearbook _1" "Slam dance _1" "Siew sum noi _1" "An eye for an eye _1" "Bangkok love stories innocence _1" )

listOld1=( "" )


listOld=( "Warper series _1" "Romantic blue _1" "Friend zone _1" "Together with me _1" "Ghost runner _1" "Capture lover _1" 
"Lakan _1" "A queen is born _1" "Tale of the nine tailed _1" "Pogi lang hanap _1" "Blood _1" "Swap test _1" "The stranded _1" 
"Friend forever _1" "Boys lockdown _1" )

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
