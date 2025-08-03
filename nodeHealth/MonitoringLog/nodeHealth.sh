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
############################################

set -x  # debug mode
set -e # exit the script when there is an error
set -o pipefail


df -h

free -g

nproc

ps -ef | grep docker | awk -F" " '{print $2}' 
