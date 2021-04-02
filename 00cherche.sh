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
list=( "Lls _1" "Unbag _1" 
"Mako ventures _1" "The voice be _9" "Wabi vlog _1" 
"Young sheldon _4" "The voice no _6" "Rpdru _13" 
"Rpdr _13" "/9-1-1 lone star _2" 
"The voice us _20" "/9-1-1 _4" "My vampire boyfriend _1" "Bt21 original story _1" 
"The voice _10" "The harvest season _1" "Top chef _12" "Bad roommate _1" "Love in time _1" 
"The voice vv _7" "Given _1" "Meet my angel _1" "Pearl next door _1" "Be love _1" "Wabi show _1" )

# entre 9 et 4
listBis=( "Bt21 vlog _1" 
"The voice kids ger _9" "Pekin express _14" "Tokyo ghoul _3" 
"Lovely writer _1" "Game of talents _1" "Schools out lets date now _1" 
"You never eat alone _1" "The untamed _1" 
"History4 close to you _1" "Precise shot _1" "We best love _2" "The masked singer _5" 
"Unlocked _1" )

# 3
listBis=( "History3 trapped _1" "Koh-lanta _26" "Slam dance _1" )

# 2
listTer=( "Bangkok love stories innocence _1" "Tbbt _11" )

listAtt=( "The shipper _1" "TharnType _2" "Friend forever _1" "Koishite akuma _1" "Blood _1" "Pogi lang hanap _1" 
"Lakan _1" "From dusk till dawn _2" "Rpdru _9" "Ghost runner _1" "Friend zone _1" 
"Capture lover _1" "Ben x jim _1" )

echo "" > logChercher
# echo "" > 0graph.dat
for i in "${list[@]}"
do
    ./0chercherSerie.sh $i 
done

for i in "${listBis[@]}"
do
    ./0chercherSerie.sh $i 
done

# echo "" >> logChercher
for i in "${list[@]}"
do
    echo "i =" $i >> logChercher
    # echo "count : " $(wc Z/$(echo $i | tr -d ' ' )) >> logChercher
    echo "ligne : " $(wc -l Z/$(echo $i | tr -d ' ' )) >> logChercher
    echo "mot   : " $(wc -w Z/$(echo $i | tr -d ' ' )) >> logChercher
    echo "carac : " $(wc -c Z/$(echo $i | tr -d ' ' )) >> logChercher
    # echo $(echo $i | tr -d ' ' ) $(wc Z/$(echo $i | tr -d ' ')) >> 0graph.dat
    echo "" >> logChercher
    echo $i
done
