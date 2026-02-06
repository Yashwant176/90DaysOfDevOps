# Day 12 – Revision (Days 01–11)

## What I Reviewed Today
- Linux basics & mindset from Day 01
- Processes and services (ps, systemctl, journalctl)
- File read/write and permissions
- User, group, and ownership basics

---

## Commands Re-run & Observations

### Process / Service Check
Command:
ps aux | head

Observation:
Saw running system processes and understood CPU/memory columns.

Command:
systemctl status ssh

Observation:
Service is active and enabled, logs available via journalctl.

---

### File & Permission Practice
Command:
echo "Revision test" >> revision.txt

Observation:
Used append redirection without overwriting file.

Command:
chmod 644 revision.txt

Observation:
Owner can write, others can only read.

---

## Cheat Sheet – My Top 5 Incident Commands
1. ps aux – check running processes
2. systemctl status <service> – service health
3. journalctl -u <service> -n 50 – logs
4. ls -l – permissions & ownership
5. df -h – disk usage

---

## Mini Self-Check

### 1) 3 commands that save me the most time
- systemctl status – instant service health
- journalctl -u – fast log access
- ls -l – permissions & ownership clarity

### 2) How I check if a service is healthy
- systemctl status <service>
- journalctl -u <service> -n 20
- ps aux | grep <service>

### 3) Safe ownership/permission change example
sudo chown user:group file.txt
chmod 640 file.txt

### 4) Focus for next 3 days
- Shell scripting basics
- Automation mindset
- Fewer commands, deeper understanding

---

## Key Takeaways
- Linux troubleshooting follows a repeatable flow
- Logs come before restarts
- Permissions + ownership control access, not magic
