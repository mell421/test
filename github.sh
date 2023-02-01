#!/bin/bash

#git log > gitLog.txt
if (( $# == 1 ))
then
    git checkout;
    git add * && git commit -m "$1";
    git push;
else
    echo "error";
fi;