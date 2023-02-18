#!/bin/bash

#remove right area click
synclient RightButtonAreaLeft=0
synclient RightButtonAreaTop=0

#add multi finger click
synclient "TapButton2"=2
synclient "TapButton3"=3
