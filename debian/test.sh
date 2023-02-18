#!/bin/bash
if pacman -Q | grep "expect" ;then 
    PASS=484
    expect -c "
    spawn ssh 192.168.0.7
    expect -nocase \":\" {send \"$PASS\r\"; interact}"
else
    echo "please install 'expect'"
fi