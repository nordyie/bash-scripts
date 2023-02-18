#!/bin/bash

PASS=$1
if apt list | grep "expect" ;then 
    expect -c "
    spawn sudo systemctl start snapd.apparmor.service
    expect -nocase \":\" {send \"$PASS\r\"; interact}"
else
    echo "please install 'expect'"
fi
