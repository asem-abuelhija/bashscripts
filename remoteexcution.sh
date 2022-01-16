#!/bin/bash

while read IP; do 
sshpass -p password123 ssh -n 0.0.0.0 "ifconfig \
hostname\
uptime"
done < list.txt 2>/dev/null
