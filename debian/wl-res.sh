# !/bin/bash

PASS=$1
if apt list | grep "expect" ;then 
    expect -c "
    spawn sudo rmmod iwldvm
    expect -nocase \":\" {send \"$PASS\r\"; interact}"
    expect -c "
    spawn sudo rmmod iwlwifi
    expect -nocase \":\" {send \"$PASS\r\"; interact}"
    expect -c "
    spawn sudo modprobe iwlwifi
    expect -nocase \":\" {send \"$PASS\r\"; interact}"    
else
    echo "please install 'expect'"
fi