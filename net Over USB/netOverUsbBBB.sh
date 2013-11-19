#!/bin/bash

ifconfig eth0 down #disable eth0 the interface (optional)
ifconfig usb0 192.168.7.2 #beagleBoneBlack USB IP
route add default gw 192.168.7.1 #PC USB IP
