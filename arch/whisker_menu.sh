#!/bin/bash

pass=$1
func(){
    if pacman -Q | grep "xcape" ;then 
        xcape -e 'Super_L=Alt_L|F1'
    else
        if pacman -Q | grep "expect" ;then 
            expect -c "
            spawn sudo pacman -S --noconfirm xcape -y
            expect -nocase \":\" {send \"$pass\r\"; interact}"
            func
        else
            echo "please install 'expect'"
        fi
    fi
}
func