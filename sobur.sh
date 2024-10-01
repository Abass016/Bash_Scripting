#!/bin/bash

# Define thresholds
CPU_THRESHOLD=80
MEMORY_THRESHOLD=80
DISK_THRESHOLD=80

# Define log file location
LOG_FILE="$HOME/system_monitor.log"
INTERVAL=10  # Logging interval in seconds
EMAIL="your_email@example.com"
SUBJECT="System Resource Alert"

# Log system resource usage
log_system_usage() {
    TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
    CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
    MEMORY_USAGE=$(free -h | awk 'NR==2{printf "%s/%s (Used/Total)", $3, $2}')
    DISK_USAGE=$(df -h / | awk 'NR==2 {print $3 "/" $2 " (" $5 " used)"}')

    echo "$TIMESTAMP - CPU: $CPU_USAGE% | Memory: $MEMORY_USAGE | Disk: $DISK_USAGE" >> "$LOG_FILE"
}

# Check thresholds and send alerts
check_threshold() {
    CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
    MEMORY_USAGE_PERCENT=$(free | awk 'NR==2{printf "%.0f", $3/$2 * 100}')
    DISK_USAGE_PERCENT=$(df / | awk 'NR==2{print $5}' | sed 's/%//')

    ALERT_MSG=""

    if (( $(echo "$CPU_USAGE > $CPU_THRESHOLD" | bc -l) )); then
        ALERT_MSG+="CPU usage is too high: $CPU_USAGE%\n"
    fi

    if (( MEMORY_USAGE_PERCENT > MEMORY_THRESHOLD )); then
        ALERT_MSG+="Memory usage is too high: $MEMORY_USAGE_PERCENT%\n"
    fi

    if (( DISK_USAGE_PERCENT > DISK_THRESHOLD )); then
        ALERT_MSG+="Disk usage is too high: $DISK_USAGE_PERCENT%\n"
    fi

    if [ "$ALERT_MSG" ]; then
        echo -e "$ALERT_MSG" | mail -s "$SUBJECT" "$EMAIL"
    fi
}

# Main loop to log and check thresholds
while true; do
    log_system_usage
    check_threshold
    sleep "$INTERVAL"
done
