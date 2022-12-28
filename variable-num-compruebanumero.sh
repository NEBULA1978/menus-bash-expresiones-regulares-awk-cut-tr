#!/bin/env bash

num="2021"
echo "La variable num tiene el valor de $num"


if [[ $num =~ [0-9] ]]; then
    printf "$num is a number\n"
else
    printf "$num is not a number\n"
fi
