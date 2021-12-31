#!/bin/bash

echo "Routine Shutdown Requested"
/home/pi/GoPiLgc/logMaintenance.py "Routine Shutdown"
batt=`(/home/pi/GoPiLgc/plib/battery.py)`
/home/pi/GoPiLgc/logMaintenance.py "'$batt'"
sudo shutdown -h +2
