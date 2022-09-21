#!/bin/bash

NC='\033[0m' # No Color

function print_env_with_color(){
    color_for_name=$1
    color_for_variable=$2
    lines=$(printenv)
    for line in $lines
    do
        name=$(echo $line | cut -d "=" -f 1)
        value="${!name}"
        echo -e "${color_for_name}$name${NC} = ${color_for_variable}$value${NC}"
    done    
}

print_env_with_color '\033[0;31m' '\033[0;32m' 