#!/bin/bash 

log_file="/var/log/syslog"

if [ -f $log_file ]; then
    grep -n "ERROR" $log_file 
    
fi