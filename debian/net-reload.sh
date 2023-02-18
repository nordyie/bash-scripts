#!/bin/bash
PASS=484
expect -c "
spawn sudo systemctl restart NetworkManager
expect -nocase \":\" {send \"$PASS\r\"; interact}"
