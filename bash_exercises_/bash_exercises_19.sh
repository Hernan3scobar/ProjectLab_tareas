#!/bin/bash 

while true; do
    cpu_usage=$(top -bn1 | grep "%Cpu(s)" | awk '{active = $2 + $4 + $6 + $10 + $12 + $14; print int(active)}')
    echo "CPU usage: $cpu_usage%"

    if (( cpu_usage > 90 )); then
        echo "Warning: CPU usage is above 90%"
    fi

    sleep 5
done
