#!/bin/bash

read -p "Enter a username: " username
ps aux | grep "^$username " || echo "User does not exist"