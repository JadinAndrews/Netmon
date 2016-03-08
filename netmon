#! /bin/bash
total_old=0
net_max=125000
for n in {1..6000};do clear;echo NetMonitor V0.1;echo;tx=($(cat /sys/class/net/eth0/statistics/tx_bytes));\
rx=($(cat /sys/class/net/eth0/statistics/rx_bytes));\
total_new=$((tx + rx));\
#percent=$(((total_new - total_old) / net_max));\
diff=$((total_new - total_old));\
percent=$(bc <<< "scale=2; $diff/$net_max");\
echo Transfered $((tx / 1048576))mb Received $((rx / 1048576))mb;\
echo;echo Total $((total_new / 1048576))mb;\
echo;echo Network Saturation $percent%;\
total_old=$total_new;\
sleep 1;\
done
