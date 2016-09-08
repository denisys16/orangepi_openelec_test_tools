#!/bin/sh

while [ : ]
do
    clear
    
    date
    echo ====
    cat /sys/devices/virtual/thermal/thermal_zone0/temp
    echo - DRAM Frequency -
    cat /sys/devices/platform/sunxi-ddrfreq/devfreq/sunxi-ddrfreq/cur_freq
    echo ----
    cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
    cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq
    cat /sys/devices/system/cpu/cpu1/cpufreq/scaling_cur_freq
    cat /sys/devices/system/cpu/cpu2/cpufreq/scaling_cur_freq
    cat /sys/devices/system/cpu/cpu3/cpufreq/scaling_cur_freq
    sleep 1
done