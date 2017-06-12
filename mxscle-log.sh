#! /bin/bash
## this script checks cpu usage of process every 10 seconds ####
while [ true ]
do 
PROCESS="java"
PID=`pgrep $PROCESS | tail -n 1`
CPU=`top -b -p $PID -n 1 | tail -n 1 | awk '{print$9}'`
echo "$(date) MaxScale CPU% usage = $CPU%" >> /var/log/ps-watch/psw.log

sleep 60

done
