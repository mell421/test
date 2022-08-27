#!/bin/bash

if (( $# == 1 ))
then
    git checkout && git add * && git commit -m "$1" && git push > resumeGit.txt;
else
    echo "error";
fi;