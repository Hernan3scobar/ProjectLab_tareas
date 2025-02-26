#!/bin/bash 

while true; do
    cpu_usage=$(top -bn1 | grep "%Cpu(s)" | awk '{active = $2 + $4 + $6 + $10 + $12 + $14; print int(active)}')
    echo "CPU usage: $cpu_usage%"
<<<<<<<< HEAD:bash_exercises_/bash_exercises_19.sh

    if (( cpu_usage > 90 )); then
        echo "Warning: CPU usage is above 90%"
    fi

========
    if (( cpu_usage > 90 )); then
        echo "Warning: CPU usage is above 90%"
    fi
>>>>>>>> 867e4db (Reorganized text files into a new_folder):bash_exercises/bash_exercises_19.sh
    sleep 5
done
