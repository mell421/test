#!/bin/bash

#git log > gitLog.txt
if (( $# == 1 ))
then
    echo " " >> resumeGit.txt;
    echo "$1" >> resumeGit.txt;
    (git checkout && git add * && git commit -m "$1") >> resumeGit.txt;
    git push;
else
    echo "error";
fi;