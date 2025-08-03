#!/bin/bash 
##########################
###
###	Author: KorzenGwiezdny
###	Date: 2.08.2025
#	Version: v1
#
#########################
#
#About: Its script for monitoring a file log, and we can filtr logs only for ERROR, CRIRICAL, and FAILED status.
#
#How to use: 
# 	in LOG_FILE type path for file.log what you wanna trace.
#	Give permission to file by using chmod +x <name_file>
#	Execute by ./MonitoringScript.sh & ## & stand for background job, we can use still terminal.
#	Kill by using jobs and kill or ps aux | grep MonitorScript.sh and find id, kill <ID>



#### Configuration ####

LOG_FILE="/var/log/syslog" # We adjust this path for what we need monitoring for ERROR,CRITICAL or FAILED status.
PATTERN="ERROR|CRITICAL|FAILED" # | means or, we search for one of this statements
OUTPUT_LOG="log_monitor.log"

#### Start Monitoring ####


echo "Monitoring $LOG_FILE for pattern: $PATTERN"
echo "Start: $(date)" >> "$OUTPUT_LOG"
echo "Monitoring started..." >> "$OUTPUT_LOG"

### TRACE file in real time ####

tail -F "$LOG_FILE" | while read line; do  # tail -F mean track a file, F stand for follow and retry
	if echo "$line" | grep -E "$PATTERN" > /dev/null; then 
		echo "[ALERT] $(date): $line"
		echo "[ALERT] $(date): $line" >> "$OUTPUT_LOG"
	fi
done

