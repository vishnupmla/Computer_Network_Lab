#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Please provide the process name or ID as a command line argument."
  exit 1
fi

process=$1

process_details=$(ps -p "$process" -o pid,ppid,cmd,%mem,%cpu,stime,etime)

if [ $? -eq 1 ]; then
  echo "Process not found."
  exit 1
fi

echo "Process Details:"
echo "$process_details"

