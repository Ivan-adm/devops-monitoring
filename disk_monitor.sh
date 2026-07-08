#!/bin/bash
THRESHOLD=80
TARGET_PATH="${TARGET_PATH:-/}"
CURRENT_USAGE=$(df "$TARGET_PATH" | awk 'NR==2 {print $5}' | tr -d '%')
echo "Current disk usage for $TARGET_PATH:  $CURRENT_USAGE%"
if [ "$CURRENT_USAGE" -gt "$THRESHOLD" ]; then
echo "! ALERT! Disk usage is about $THRESHOLD%! Free up disk immediately!"
else
echo " Everything is ok. Disk space is sufficient."
fi
