#!/bin/env bash

greet="123Hello,World!"


if [[ $greet =~ ^[0-9] ]]; then
    printf "$greet starts with a digit(s).\n"
else
    printf "$greet does not start with a digit(s)\n"
fi