#! /bin/bash
total_old=0

#Bash is float agnostic so net_max is multiplied by 100 in order to get percentage
#I hacked the use of bc further on, still need to refactor the code a bit
net_max=125000
for n in {1..6000};do clear;echo NetMonitor V0.1;echo;tx=($(cat /sys/class/net/eth0/statistics/tx_bytes));\
rx=($(cat /sys/class/net/eth0/statistics/rx_bytes));\
total_new=$((tx + rx));\
#The old integer percentage
#percent=$(((total_new - total_old) / net_max));\
\
#This is the bc hack to get a floating percentage
diff=$((total_new - total_old));\
percent=$(bc <<< "scale=2; $diff/$net_max");\
\
echo Transfered $((tx / 1048576))mb Received $((rx / 1048576))mb;\
echo;echo Total $((total_new / 1048576))mb;\
echo;echo Network Saturation $percent%;\
total_old=$total_new;\
sleep 1;\
done
