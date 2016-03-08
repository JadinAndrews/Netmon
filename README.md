# Netmon v0.1
A simple cli Network traffic monitor written in bash

I wrote this utility simply to gain insight to what was happening on my network at a given point in time. It's very simpleat this stage, but it does report some useful info like Total transfered/received as well as a network saturation metric displayed as a percentage.

This is a shell script, so in order to use it, you will need to copy it to a directory and give it executable permissions before you can run it. If you would like to have it available from any point in the system, cp it to /usr/bin

As of now, the script is really dumb, it accepts no arguments, assumes that you only want to monitor eth0, and assumes that your network has a max throughput of 100mbps (for the saturation calculation)

NB: Use this at your own risk and in any way you like. I will not be held responsible for any data loss or system compromises. 
