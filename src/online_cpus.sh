#!/bin/bash

echo 0 > /sys/devices/system/cpu/cpu12/online
echo 0 > /sys/devices/system/cpu/cpu13/online
echo 0 > /sys/devices/system/cpu/cpu14/online
echo 0 > /sys/devices/system/cpu/cpu15/online

#echo 1500000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
echo 2000000 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
echo 2000000 > /sys/devices/system/cpu/cpu2/cpufreq/scaling_max_freq
echo 2000000 > /sys/devices/system/cpu/cpu3/cpufreq/scaling_max_freq
#echo 1500000 > /sys/devices/system/cpu/cpu8/cpufreq/scaling_max_freq
echo 1500000 > /sys/devices/system/cpu/cpu9/cpufreq/scaling_max_freq
echo 1500000 > /sys/devices/system/cpu/cpu10/cpufreq/scaling_max_freq
echo 1500000 > /sys/devices/system/cpu/cpu11/cpufreq/scaling_max_freq

echo 2900000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq
echo 2000000 > /sys/devices/system/cpu/cpu5/cpufreq/scaling_max_freq
echo 2900000 > /sys/devices/system/cpu/cpu6/cpufreq/scaling_max_freq
echo 2000000 > /sys/devices/system/cpu/cpu7/cpufreq/scaling_max_freq

echo 2900000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
echo 2000000 > /sys/devices/system/cpu/cpu5/cpufreq/scaling_min_freq
echo 2900000 > /sys/devices/system/cpu/cpu6/cpufreq/scaling_min_freq
echo 2000000 > /sys/devices/system/cpu/cpu7/cpufreq/scaling_min_freq
