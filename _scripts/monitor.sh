#!/bin/bash
# monitor.sh - Logs system uptime, memory, and disk usage

LOG_FILE="/home/developers/Lab_5_workspace/logs/system.log"

{
  echo "=============================="
  echo "System Monitoring Log - $(date)"
  echo "------------------------------"
  echo "Uptime:"
  uptime
  echo
  echo "Memory Usage:"
  free -h
  echo
  echo "Disk Usage:"
  df -h
  echo "=============================="
  echo
} >> "$LOG_FILE"

