# Day 07 – Linux File System & Scenario Practice

## Part 1: Linux File System Hierarchy

### /
- Root of the entire filesystem
- All files and directories start from here
I would use this to understand the overall structure of the system.

---

### /home
- Contains home directories for normal users
- User files, scripts, and personal configs live here
I would use this when checking user data or scripts.

Example:
- Found directories for different users using ls -l /home

---

### /root
- Home directory of the root user
- Accessible only by root
I would use this when logged in as root for admin tasks.

---

### /etc
- Stores system-wide configuration files
- Services read configs from here
I would use this when modifying application or service configuration.

Example:
- Checked hostname using cat /etc/hostname

---

### /var/log
- Stores system and application logs
- Very important for troubleshooting
I would use this when debugging service failures.

Example:
- Found log directories like syslog, auth.log

---

### /tmp
- Temporary files directory
- Files can be deleted after reboot
I would use this for temporary testing files.

---

### /bin
- Essential system binaries like ls, cp, mv
I would use this when basic commands are not working.

---

### /usr/bin
- User-level binaries and applications
I would use this to locate installed commands.

---

### /opt
- Optional or third-party software
I would use this for manually installed applications.

---

## Part 2: Scenario-Based Practice

### Scenario 1: Service Not Starting

Step 1: Check service status  
Command:
```bash
systemctl status myapp
