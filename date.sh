#!/bin/bash

git_last_commit_date="$(git log -1 --format=%cd)"
echo "document.write(\`<center>" > lastCommit.js
echo "Git last commit date: $git_last_commit_date" >> lastCommit.js
echo "  </center>\`)" >> lastCommit.js
# html_files="$(find . -type f -name "*.html")"
# echo "
# <html>
# <head>
# </head>
# <body>
# " > lastCommit.txt
# for file in $html_files; do 
#   echo "file: $file $git_last_commit_date" >> lastCommit.txt
#   # sed -i "" "s|<span id=\"git-last-commit-date\">*</span>|<span id=\"git-last-commit-date\">$git_last_commit_date</span>|g" "$file"
# done 
# echo "</body> </html>" >> lastCommit.txt