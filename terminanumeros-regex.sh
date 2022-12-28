#!/bin/env bash

greet="Hello,World!123"


if [[ $greet =~ [0-9]$ ]]; then
    printf "$greet ends with a digit(s).\n"
else
    printf "$greet does not end with a digit(s)\n"
fi
