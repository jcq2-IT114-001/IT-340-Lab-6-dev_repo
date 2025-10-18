#!/bin/bash
# timesheet.sh - Collects and logs work info

LOG_FILE="/home/developers/Lab_5_workspace/logs/timesheet.log"

read -p "First Name: " fname
read -p "Last Name: " lname
read -p "Number of Hours Worked: " hours
read -p "Description of Work: " description

{
  echo "=============================="
  echo "Timesheet Entry - $(date)"
  echo "Name: $fname $lname"
  echo "Hours Worked: $hours"
  echo "Description: $description"
  echo "=============================="
  echo
} >> "$LOG_FILE"

# Copy log into data folder for backup
cp "$LOG_FILE" /home/developers/Lab_5_workspace/data/
