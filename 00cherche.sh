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
list=( "Lls _1" "Unbag _1" "Wabi vlog _1" 
"Mako ventures _1" "The voice no _6" "Young sheldon _4" "The voice us _20" 
"" 
"The voice _10" "/9-1-1 lone star _2" "Bt21 original story _1" "Top chef _12" "/9-1-1 _4" 
"Given _1" "The voice vv _7" "History4 close to you _1" 
"History3 trapped _1" "The masked singer _5" "Precise shot _1" 
"Koh-lanta _26" "Game of talents _1" "Survivor au _4" "Mental _1" "Ydestiny _1" "Bt21 vlog _1" )

# entre 9 et 4
listBis=( "The voice kids nl _10" "" 
"Life senjou no bokura _1" "Schools out lets date now _1" 
"You never eat alone _1" 
"My lascivious boss _1" "Mr lipstick _1" 
"Fish upon the sky _1" "The most peaceful place _1" 
"Weekend to remember _1" "Friend or lover _1" "Unlocked _1" )

# 3
list3=( "Wtfock _5" "Close friend _1" )

# 2-0
list2=( "History3 modc _1" "I can see your voice fr _1" "Rpdrdu _1" )

listAtt=( )

listOld=( "Pearl next door _1" "Love in time _1" "Tokyo ghoul _3" "My vampire boyfriend _1" "Tbbt _11" "Slam dance _1" 
"The untamed _1" "The harvest season _1" "The shipper _1" "Bangkok love stories innocence _1" 
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
