# Linux Commands Cheat Sheet (DevOps Basics)

## 1. File System Commands

- `pwd` – Show current working directory
- `ls` – List files and directories
- `ls -l` – List files with detailed information
- `cd` – Change directory
- `mkdir` – Create a new directory
- `rm` – Remove files or directories
- `cp` – Copy files or directories
- `mv` – Move or rename files
- `touch` – Create an empty file
- `cat` – Display file content
- `less` – View file content page by page
- `du -sh` – Check directory size
- `df -h` – Check disk usage

---

## 2. Process Management Commands

- `ps` – Show running processes
- `ps aux` – Display detailed process information
- `top` – Real-time CPU and memory usage
- `htop` – Interactive process viewer (if installed)
- `kill <PID>` – Terminate a process by PID
- `kill -9 <PID>` – Force kill a process
- `nice` – Start process with priority
- `uptime` – Show system running time and load

---

## 3. Networking & Troubleshooting Commands

- `ping` – Check network connectivity
- `ip addr` – Display IP address details
- `ip route` – Show routing table
- `curl` – Test APIs or HTTP services
- `wget` – Download files from internet
- `netstat -tuln` – Show listening ports
- `ss -tuln` – Modern alternative to netstat

---

## 4. Log & System Inspection Commands

- `journalctl` – View system logs
- `journalctl -u <service>` – View service logs
- `dmesg` – View kernel logs
- `free -h` – Check memory usage
- `whoami` – Show current user
