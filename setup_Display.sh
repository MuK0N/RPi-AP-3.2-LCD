#!/bin/bash

mkdir LCD_Display
tar xvf LCD-show-180817.tar.gz 
cd LCD-show/
chmod +x LCD32-show 
#output only on hdmi
#./LCD-hdmi

#output on the 3.2 LCD 
#./LCD32-show
#output on the 3.2 LCD 180 degree rotated
./LCD32-show 180
