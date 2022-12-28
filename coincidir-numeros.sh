#!/bin/bash

# greet="Hello,World!"
greet="Hello1,World!"

if [[ $greet =~ [0-9] ]]; then
    printf "$greet is a number\n"
else
    printf "$greet is not a number\n"
fi
