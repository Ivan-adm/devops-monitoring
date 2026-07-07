#!/bin/bash

while true
do

    echo "=== check disk: $(date) ==="
    df -h /
    echo "==========================="
    sleep 10
done    
