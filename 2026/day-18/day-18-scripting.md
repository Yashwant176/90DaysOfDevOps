## functions.sh
```

#!/bin/bash

# Function: greet
greet() {
  local name="$1"
  echo "Hello, $name!"
}

# Function: add
add() {
  local a="$1"
  local b="$2"
  local sum=$((a + b))
  echo "Sum of $a and $b is: $sum"
}

# Calling functions
greet "Yash"
add 10 20

```

## disk_check.sh

```
#!/bin/bash

# Function: check disk usage
check_disk() {
  echo "=== Disk Usage (/ partition) ==="
  df -h /
}

# Function: check memory usage
check_memory() {
  echo "=== Memory Usage ==="
  free -h
}

# Main
echo "System Resource Check"
echo "----------------------"

check_disk
echo ""
check_memory
```
## strict_demo.sh

```
#!/bin/bash
set -euo pipefail

echo "Strict mode demo script"

# 1. Undefined variable test (uncomment to test)
# echo "$UNDEFINED_VAR"

# 2. Command failure test (uncomment to test)
# ls /non_existent_directory

# 3. Pipe failure test
echo "Testing pipefail..."
echo "hello" | grep "world" | wc -l

echo "Script completed"
```

## local_demo.sh

```
#!/bin/bash

demo_local() {
  local local_var="I am local"
  global_var="I am global"

  echo "Inside function:"
  echo "$local_var"
  echo "$global_var"
}

demo_global() {
  global2="I leak outside"
}

demo_local
demo_global

echo ""
echo "Outside function:"
echo "${global_var:-not set}"
echo "${local_var:-not accessible}"
echo "$global2"
```

## system_info.sh
```
#!/bin/bash
set -euo pipefail

print_header() {
  echo ""
  echo "======================================"
  echo "$1"
  echo "======================================"
}

get_system_info() {
  print_header "HOSTNAME & OS INFO"
  hostname
  uname -a
}

get_uptime() {
  print_header "SYSTEM UPTIME"
  uptime
}

get_disk_usage() {
  print_header "DISK USAGE (TOP LEVEL)"
  df -h | head -n 6
}

get_memory_usage() {
  print_header "MEMORY USAGE"
  free -h
}

get_top_processes() {
  print_header "TOP 5 CPU PROCESSES"
  ps -eo pid,ppid,cmd,%cpu --sort=-%cpu | head -n 6
}

main() {
  echo "SYSTEM INFO REPORT"
  echo "Generated at: $(date)"

  get_system_info
  get_uptime
  get_disk_usage
  get_memory_usage
  get_top_processes
}

main
```
## 📌 Scripts Created

## 1. functions.sh

### Output:
```
Hello, Yash!
Sum of 10 and 20 is: 30
```
## 2. disk_check.sh

### Output:
```
System Resource Check
=== Disk Usage (/ partition) ===
...
=== Memory Usage ===
...
```

## 3. strict_demo.sh

What is strict mode?
set -e → stops script on error
set -u → errors on undefined variables
set -o pipefail → pipeline fails if any command fails

Observation:

Undefined variables cause script crash
Failed commands stop execution immediately
Pipe failures are not hidden

## 4. local_demo.sh
Key Learning:

local variables stay inside functions
Global variables persist outside functions
Helps avoid variable conflicts

## 5. system_info.sh
Features:

Modular functions
Clean system report
CPU, memory, disk, uptime info
Strict mode enabled for safety


## Key Learnings
Functions make scripts reusable and clean
Strict mode prevents silent failures
Local variables help avoid global variable pollution
