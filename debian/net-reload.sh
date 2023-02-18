#!/bin/bash
PASS=$1
expect -c "
spawn sudo systemctl restart NetworkManager
expect -nocase \":\" {send \"$PASS\r\"; interact}"
