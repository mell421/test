#!/bin/bash

./0date.sh
./0supprZ.sh
# >= 100
# 99 - 30
# 29 - 20
# 19 - 15
# 14 - 10
list=( "Lls _1" "Unbag _1" 
"The voice nl _11" "Mako ventures _1" "The voice be _9" "The voice uk _10" "Wabi vlog _1" "The voice no _6" "Young sheldon _4" "Happenstance _1" 
"/9-1-1 lone star _2" "Sea him _1" "Rpdru _13" "My vampire boyfriend _1" "Skam fr _7" "Rpdr _13" "Girl2k _1" "/9-1-1 _4" 
"Rpdruk _2" "Dancing on ice uk _13" "The harvest season _1" "Love in time _1" "Koishite akuma _1" 
"Given _1" "TharnType _2" "You make me dance _1" "Pearl next door _1" "Be love _1" "1000 stars _1" "Wabi show _1" )

# entre 9 et 4
listBis=( "The voice _10" 
"Tokyo ghoul _3" 
"The voice vv _7" 
"The untamed _1" 
"Schools out lets date now _1" "Top chef _12" "The shipper _1" 
"Unlocked _1" "You never eat alone _1" )

# 3
listBis=( "Lovely writer _1" "Pekin express _14" "The voice kids ger _9" "Slam dance _1" )

listAtt=( "Friend forever _1" "Blood _1" "Pogi lang hanap _1" "Lakan _1" "From dusk till dawn _2" "Rpdru _9" 
"Ghost runner _1" "Friend zone _1" "Capture lover _1" "Ben x jim _1" )

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
done
