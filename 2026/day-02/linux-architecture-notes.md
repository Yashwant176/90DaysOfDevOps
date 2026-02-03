# Linux Architecture & Process Basics

## 1. Core Components of Linux

### Kernel
- The kernel is the core of the Linux OS
- It manages:
  - CPU scheduling
  - Memory management
  - Hardware communication
  - Process management
- Applications do not directly access hardware; they go through the kernel

### User Space
- This is where user applications run
- Includes:
  - Shell (bash)
  - System utilities (ls, ps, top)
  - User applications (web servers, databases)
- User space programs interact with the kernel using system calls

### init / systemd
- `systemd` is the first process started by the kernel (PID 1)
- It manages:
  - System services
  - Service startup order
  - Automatic restarts
  - Logs and dependencies

---

## 2. Process Creation & Management

- A process is a running instance of a program
- New processes are created using `fork()` and `exec()`
- Every process has:
  - PID (Process ID)
  - Parent PID
  - State
  - Resource usage (CPU, memory)

### Process States
- **Running (R):** Currently executing on CPU
- **Sleeping (S):** Waiting for an event or resource
- **Stopped (T):** Paused manually or by signal
- **Zombie (Z):** Process finished execution but not cleaned up by parent
- **Uninterruptible Sleep (D):** Waiting on I/O (disk, network)

---

## 3. What systemd Does & Why It Matters

- systemd manages system services like:
  - nginx
  - docker
  - ssh
- Key benefits:
  - Faster boot time
  - Automatic service restarts
  - Better dependency handling
- Services are defined using `.service` files

---

## 4. Daily Linux Commands for DevOps

1. `ps` – View running processes
2. `top` – Monitor CPU and memory usage
3. `systemctl` – Manage system services
4. `journalctl` – View system and service logs
5. `kill` – Send signals to processes

---

## 5. Why This Is Important for DevOps

- Helps debug crashed applications
- Understand high CPU or memory usage
- Control and monitor production services
- Read logs and fix issues faster
