#!/bin/bash

for cpu_online in /sys/devices/system/cpu/cpu*/online
do
	echo 1 > $cpu_online
done
