# 🛠️ Bash Scripts for Linux Monitoring & Automation

A small collection of Bash scripts designed to help with basic system diagnostics and real-time log monitoring on Linux servers or cloud instances.

---

## 📂 Included Scripts

### 1. [`nodeHealth.sh`](./nodeHealth.sh)
🩺 **Purpose:**  
Performs a quick health check of your Linux system by printing basic system info.

🔍 **What it shows:**
- Disk usage (`df -h`)
- Free RAM in GB (`free -g`)
- Number of CPU cores (`nproc`)
- List of Docker-related processes (`ps | grep docker`)

🚀 **Usage:**
chmod +x nodeHealth.sh
./nodeHealth.sh

### 2. [`MonitoringScript.sh`](./MonitoringScript.sh)
📡 **Purpose:**  
Monitors a log file in real-time and alerts when a line contains one of the following keywords: `ERROR`, `CRITICAL`, or `FAILED`.

🔍 **Features:**
- Real-time monitoring using `tail -F`
- Filters log entries using `grep -E`
- Saves alerts to `log_monitor.log` with timestamps
- Prints alerts to terminal
- Can run as a background job (`&`), so the terminal remains free

🚀 **Usage:**

chmod +x MonitoringScript.sh
./MonitoringScript.sh &    # run in background

🛑 To stop the script:
jobs                      # check background jobs
kill %<job_number>        # stop by job number
# or:
ps aux | grep MonitoringScript
kill <PID>                # stop by process ID

⚙️ Configuration (inside script):

LOG_FILE="/path/to/your/logfile.log"
PATTERN="ERROR|CRITICAL|FAILED"



