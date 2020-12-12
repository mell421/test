#!/bin/bash

read -p 'nom du fichier(js) : ' nom
echo "document.write(\`" > js/$nom.js
echo " " >> js/$nom.js
echo "\`)" >> js/$nom.js