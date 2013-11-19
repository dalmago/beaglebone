#!/bin/bash

##In this example:
#wlan0 is the interface that have internet connection
#eth1 is the USB interface that the beagleBone Black is connected

ifconfig eth1 192.168.7.1

iptables --table nat --append POSTROUTING --out-interface wlan0 -j MASQUERADE

iptables --append FORWARD --in-interface eth1 -j ACCEPT

echo 1 > /proc/sys/net/ipv4/ip_forward
