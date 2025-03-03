#!/bin/bash

[ $# -eq 0 ] && echo "Error: Please provide username or IP" && exit 1

last -n 5 | grep -w "$1"
