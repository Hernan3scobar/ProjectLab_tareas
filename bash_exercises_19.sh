#!/bin/bash 

while true; do
    # Extract CPU usage and convert it to an integer for comparison
    cpu_usage=$(top -bn1 | grep "%Cpu(s)" | awk '{active = $2 + $4 + $6 + $10 + $12 + $14; print int(active)}')
    echo "CPU usage: $cpu_usage%"

    # Check if CPU usage is above 90%
    if (( cpu_usage > 90 )); then
        echo "Warning: CPU usage is above 90%"
    fi

    # Wait for 5 seconds before checking again
    sleep 5
done