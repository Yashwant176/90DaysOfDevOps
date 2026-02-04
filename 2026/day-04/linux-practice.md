# Linux Practice – Processes and Services

## 1. Process Checks

### Command: ps aux | head
Purpose: View running processes and resource usage.

Output (partial):
USER PID %CPU %MEM COMMAND
root 1 0.0 0.1 systemd
root 456 0.0 0.0 kthreadd


Observation:
- systemd is running as PID 1
- Multiple system-level processes are running as root

---

### Command: top
Purpose: Monitor CPU and memory usage in real time.

Observation:
- CPU usage was mostly idle
- systemd and bash were active processes

---

## 2. Service Checks

### Command: systemctl list-units --type=service --state=running
Purpose: List all running services.

Observation:
- ssh service is running
- cron service is active

---

### Command: systemctl status ssh
Purpose: Check status of SSH service.

Observation:
- Service is active (running)
- Loaded by systemd at boot

---

## 3. Log Checks

### Command: journalctl -u ssh --no-pager | tail -n 20
Purpose: View recent SSH service logs.

Observation:
- Logs show normal startup messages
- No critical errors found

---

### Command: journalctl -xe --no-pager | tail -n 20
Purpose: View recent system logs.

Observation:
- No major errors
- System operating normally

---

## 4. Mini Troubleshooting Scenario

Scenario:
If SSH service is not working.

Steps:
1. Check service status using `systemctl status ssh`
2. Review logs using `journalctl -u ssh`
3. Restart service using `systemctl restart ssh`
4. Verify service is running
