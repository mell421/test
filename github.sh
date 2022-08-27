#!/bin/bash

if (( $# == 1 ))
then
    (git checkout && git add * && git commit -m "$1") > resumeGit.txt;
    git push;
else
    echo "error";
fi;