# Linux Troubleshooting Runbook – SSH Service

## Target Service
- Service: ssh
- Purpose: Remote server access

---

## Environment Basics

### Command: uname -a
Observation:
- Linux kernel is running normally

### Command: cat /etc/os-release
Observation:
- System is running Ubuntu Linux

---

## Filesystem Sanity Check

### Command: mkdir /tmp/runbook-demo
Observation:
- Temporary directory created successfully

### Command: cp /etc/hosts /tmp/runbook-demo/hosts-copy && ls -l /tmp/runbook-demo
Observation:
- File copy successful, filesystem is writable

---

## Snapshot: CPU & Memory

### Command: top
Observation:
- CPU usage mostly idle
- No process consuming abnormal CPU

### Command: free -h
Observation:
- Sufficient free memory available
- No memory pressure detected

---

## Snapshot: Disk & IO

### Command: df -h
Observation:
- Root filesystem has sufficient free space

### Command: du -sh /var/log
Observation:
- Log directory size is normal

---

## Snapshot: Network

### Command: ss -tulpn | grep ssh
Observation:
- SSH is listening on port 22

### Command: ping -c 3 google.com
Observation:
- Network connectivity is working

---

## Logs Reviewed

### Command: journalctl -u ssh -n 50 --no-pager
Observation:
- No recent errors in SSH service logs

### Command: tail -n 50 /var/log/auth.log
Observation:
- Normal login activity
- No repeated authentication failures

---

## Quick Findings
- SSH service is healthy
- No CPU, memory, disk, or network issues detected
- Logs show normal behavior

---

## If This Worsens (Next Steps)
1. Restart SSH service and re-check logs
2. Increase log verbosity for SSH debugging
3. Check failed login attempts and firewall rules
