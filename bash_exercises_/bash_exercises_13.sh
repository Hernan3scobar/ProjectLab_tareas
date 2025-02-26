#!/bin/bash 

log_file="/var/log/syslog"

if [ -f $log_file ]; then
    tail -f $log_file
    
fi