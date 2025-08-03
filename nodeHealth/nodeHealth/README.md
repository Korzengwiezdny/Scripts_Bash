# 🩺 Node Health Check Script

A simple Bash script for basic monitoring of a Linux server or cloud instance.  
Displays key system resource information like disk usage, RAM, CPU cores, and running Docker processes.

---

## 📦 Features

- Disk usage overview (`df -h`)
- RAM usage in GB (`free -g`)
- Number of logical CPU cores (`nproc`)
- List of Docker-related processes (`ps -ef | grep docker`)
- Useful for quick health checks of local or remote servers

---

## 📂 File

```bash
nodeHealth.sh
