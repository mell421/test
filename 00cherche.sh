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
list=( "Unbag _1" "Wabi vlog _1" 
"Survivor au _4" 
"" 
"Bt21 original story _1" "Ydestiny _1" 
"My vampire boyfriend _1" "Nitiman _1" "Fish upon the sky _1" "Wtfock _5" 
"Skam fr _8" "Precise shot _1" "The harvest season _1" "Vincenzo _1" "Weekend to remember _1" "Love in time _1" 
"TharnType _2" "Mental _1" "Rpdrdu _1" "Pearl next door _1" "Be love _1" "Friend or lover _1" "Bt21 vlog _1" "Wabi show _1" )

# entre 9 et 3
listBis=( "Drag race esp _1" 
"Life senjou no bokura _1" "Schools out lets date now _1" "Tokyo ghoul _3" 
"Crime scene kitchen _1" "You never eat alone _1" 
"Mr lipstick _1" "The untamed _1" 
"Agt _16" "The shipper _1" 
"I can see your voice fr _1" "Unlocked _1" 
"Beat shazam _4" "Slam dance _1" "Tien bromance _1" )


# 2-0
list2=( "Lego masters _2" "Dark blue kiss _1" "Special _2" "An eye for an eye _1" "Bangkok love stories innocence _1" "Tbbt _11" 
"" )

listAtt=( )

listOld=( "Friend forever _1" "Koishite akuma _1" "Blood _1" "Pogi lang hanap _1" "Lakan _1" 
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
