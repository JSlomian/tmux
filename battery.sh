#!/bin/bash

BAT0=$(cat /sys/class/power_supply/BAT0/capacity 2>/dev/null || echo 0)
BAT1=$(cat /sys/class/power_supply/BAT1/capacity 2>/dev/null || echo 0)

TOTAL=$(( (BAT0 + BAT1) / 2 ))  # Average battery percentage
echo "$TOTAL%"
