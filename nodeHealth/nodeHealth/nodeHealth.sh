#!/bin/bash


############################################
## Author: Frank
#Date: 22.07.2025
#
#This script output the node health
#
#
#Version: v1
#
#About: We can monitor health our server Linux or cloud instance. Its basic information about a system.
#
#How to use: Change permission in the file, and execute ~/nodeHealth.sh, we can put this script to crontab.
#
############################################

set -x  # debug mode
set -e # exit the script when there is an error
set -o pipefail


df -h #printing a size volumin

free -g # printing free ram

nproc # number of logic cores

ps -ef | grep docker | awk -F" " '{print $2}' # Looking for ID of proces for e.g. docker

