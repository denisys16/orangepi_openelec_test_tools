#/bin/bash
while (true); do
    cpu_cur=$(( `cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq` / 1000 ))
    cpu_max=$(( `cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq` / 1000 ))
    cpu_min=$(( `cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq` / 1000 ))
    cpu_cur="$(printf "%4s" $cpu_cur)"
    cpu_max="$(printf "%4s" $cpu_max)"
    cpu_min="$(printf "%4s" $cpu_min)"
    tempr=`cat /sys/devices/virtual/hwmon/hwmon1/temp1_input`
    tempr="$(printf "%3s" $tempr)"
    ddr_cur=$(( `cat /sys/devices/platform/sunxi-ddrfreq/devfreq/sunxi-ddrfreq/cur_freq` / 1000 ))
    ddr_max=$(( `cat /sys/devices/platform/sunxi-ddrfreq/devfreq/sunxi-ddrfreq/max_freq` / 1000 ))
    ddr_min=$(( `cat /sys/devices/platform/sunxi-ddrfreq/devfreq/sunxi-ddrfreq/min_freq` / 1000 ))
    ddr_cur="$(printf "%4s" $ddr_cur)"
    ddr_max="$(printf "%4s" $ddr_max)"
    ddr_min="$(printf "%4s" $ddr_min)"
    echo -ne "  CPU (MHz): $cpu_cur (min $cpu_min, max $cpu_max)  TEMPERATURE: $tempr  MEMORY (MHz): $ddr_cur (min $ddr_min, max $ddr_max)   "\\r
    sleep 0.2
done