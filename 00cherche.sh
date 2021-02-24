#!/bin/bash

./0date.sh
./0supprZ.sh
# >= 100
# 99 - 20
# 19 - 15
list=( "Lls _1" "Unbag _1" 
"The voice nl _11" "Mako ventures _1" "Happenstance _1" "Sea him _1" "The voice be _9" 
"The voice no _6" "Young sheldon _4" "Name that tune _1" "Koishite akuma _1" 
"Rpdr _13" "The voice uk _10" "TharnType _2" "Dancing on ice uk _13" "Be love _1" "Rpdruk _2" "/9-1-1 lone star _2" )

# entre 4 et 9
listBis=( "Rpdru _13" "Pearl next door _1" 
"The harvest season _1" "Wabi vlog _1" "/9-1-1 _4" 
"Wabi show _1" "Dancing on ice uk _12" 
"Skam fr _7" "The untamed _1" "The shipper _1" 
"Ben x jim _1" )

listAtt=( "Friend forever _1" "My vampire boyfriend _1" "Blood _1" "Pogi lang hanap _1" "Lakan _1" "From dusk till dawn _2" "Rpdru _9" 
"Ghost runner _1" "Friend zone _1" "Capture lover _1" )

echo " " > logChercher
# echo "" > 0graph.dat
for i in "${list[@]}"
do
    ./0chercherSerie.sh $i 
done

for i in "${listBis[@]}"
do
    ./0chercherSerie.sh $i 
done

echo "" >> logChercher
for i in "${list[@]}"
do
    echo "i =" $i >> logChercher
    # echo "count : " $(wc Z/$(echo $i | tr -d ' ' )) >> logChercher
    echo "ligne : " $(wc -l Z/$(echo $i | tr -d ' ' )) >> logChercher
    echo "mot   : " $(wc -w Z/$(echo $i | tr -d ' ' )) >> logChercher
    echo "carac : " $(wc -c Z/$(echo $i | tr -d ' ' )) >> logChercher
    # echo $(echo $i | tr -d ' ' ) $(wc Z/$(echo $i | tr -d ' ')) >> 0graph.dat
    echo " " >> logChercher
done
