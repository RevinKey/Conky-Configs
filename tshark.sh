#!bin/bash 
ip=`ip addr show | grep "inet " | grep -v "127.0.0.1/8" | awk '{print $2}' | cut -c -14`


tshark -i wlan0 host $ip > Desktop/log.txt
