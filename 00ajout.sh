#!/bin/bash
read -p '1 html - 2 js - 3 sh : ' type

if (( type == 1 ))
then
    read -p 'nom du fichier(html) : ' nom
    echo "<html>\n<head>\n</head>\n<body>\n</body>\n</html>" > $nom.html
else
    if (( type == 2 ))
    then
        read -p 'nom du fichier(js) : ' nom
        echo "document.write(\`" > js/$nom.js
        echo " " >> js/$nom.js
        echo "\`)" >> js/$nom.js
    else
        read -p 'nom du fichier(sh) : ' nom
        echo "#!/bin/bash" > 0$nom.sh
    fi;
fi;