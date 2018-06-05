#!/bin/bash
set -e

show_error(){
        echo -e "\033[41;36m $1 \033[0m"
}

if [ "$#" -ge 2 ]; then
        cd $2
        gitbook $1 . --log debug
else
        show_error "input param error"
fi