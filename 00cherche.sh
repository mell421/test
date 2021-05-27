#!/bin/bash

./0date.sh
./0supprZ.sh
# >= 100
# 99 - 50
# 49 - 40
# 39 - 30
# 29 - 20
# 19 - 15
# 14 - 10
list=( "Lls _1" "Unbag _1" "The voice no _6" "Wabi vlog _1" 
"Top chef _12" "Survivor au _4" 
"The voice vv _7" "History3 trapped _1" "" 
"Bt21 original story _1" 
"My vampire boyfriend _1" 
"The voice kids nl _10" "Koh-lanta _26" "Ydestiny _1" "Precise shot _1" "Love in time _1" 
"My lascivious boss _1" "Mental _1" "Weekend to remember _1" "The most peaceful place _1" "Pearl next door _1" "Bt21 vlog _1" )

# entre 9 et 3
listBis=( "Fish upon the sky _1" 
"Close friend _1" "Life senjou no bokura _1" "Schools out lets date now _1" "Tokyo ghoul _3" 
"You never eat alone _1" 
"Nitiman _1" "Mr lipstick _1" 
"" 
"Wtfock _5" "Friend or lover _1" "Unlocked _1" 
"Rpdrdu _1" "Skam fr _8" "I can see your voice fr _1" )


# 2-0
list2=( "History3 modc _1" "Bangkok love stories innocence _1" 
"Skinship _2" "Special _2" "An eye for an eye _1" 
"" )

listAtt=( )

listOld=( "Tbbt _11" "Slam dance _1" 
"The untamed _1" "The harvest season _1" "The shipper _1" 
"TharnType _2" "Wabi show _1" "Friend forever _1" "Be love _1" "Koishite akuma _1" "Blood _1" "Pogi lang hanap _1" "Lakan _1" 
"From dusk till dawn _2" "Rpdru _9" "Ghost runner _1" "Friend zone _1" "Capture lover _1" "Ben x jim _1" )


# echo "" > 0graph.dat
for i in "${list[@]}"
do
    echo "i =" $i
    ./0chercherSerie.sh $i 
    ./0chercherSerieBis.sh ${i,,} 
    
done

for i in "${listBis[@]}"
do
    echo "i =" $i
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
