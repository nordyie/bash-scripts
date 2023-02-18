#!/bin/bash

state=$1
pass=$2
func(){
    if pacman -Q | grep "numlockx" ;then 
        numlockx $state
        echo "num is $state"
    else
        if pacman -Q | grep "expect" ;then 
            expect -c "
            spawn sudo pacman -S --noconfirm numlockx
            expect -nocase \":\" {send \"$pass\r\"; interact}"
            func
        else
            echo "please install 'expect'"
        fi
    fi
}
func