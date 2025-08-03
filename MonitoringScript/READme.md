# 📡 Log Monitoring Script

A simple Bash script for monitoring a log file in real-time and filtering for lines containing critical error patterns such as `ERROR`, `CRITICAL`, or `FAILED`.

---

## 📌 Features

- Real-time log monitoring using `tail -F`
- Customizable pattern matching with `grep -E`
- Filters and alerts for:
  - `ERROR`
  - `CRITICAL`
  - `FAILED`
- Outputs alerts to both terminal and log file (`log_monitor.log`)
- Can run in the background (`&`) without blocking terminal

---

## 🧑‍💻 Author

**KorzenGwiezdny**  
📅 Date: 2.08.2025  
🧪 Version: v1

---

## 🔧 Configuration

Edit the following variables inside the script before running:

```bash
LOG_FILE="/var/log/syslog"         # Path to the log file you want to monitor
PATTERN="ERROR|CRITICAL|FAILED"    # What to look for
OUTPUT_LOG="log_monitor.log"       # Where to save the alerts
