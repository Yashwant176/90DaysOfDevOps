# Day 17 – Shell Scripting: Loops, Arguments & Error Handling 

## 📌 Overview
On Day 17 of **#90DaysOfDevOps**, I leveled up my shell scripting skills by working with loops, command-line arguments, package installation scripts, and basic error handling.

---

## ✅ Task 1: For Loop

### `for_loop.sh`
```bash
#!/bin/bash

FRUITS=("Apple" "Banana" "Orange" "Mango" "Grapes")

for fruit in "${FRUITS[@]}"; do
  echo "$fruit"
done
```
### 'count.sh'
```bash
#!/bin/bash

for i in {1..10}; do
  echo $i
done
```

## ✅ Task 1: While Loop

### 'countdown.sh'
```bash
#!/bin/bash

read -p "Enter a number: " NUM

while [ $NUM -ge 0 ]; do
  echo $NUM
  NUM=$((NUM - 1))
done

echo "Done!"
```

## ✅ Task 3: Command-Line Arguments

### 'greet.sh'
```bash
#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Usage: ./greet.sh <name>"
  exit 1
fi

echo "Hello, $1!"
```

### 'args_demo.sh'
```bash
#!/bin/bash

echo "Script name: $0"
echo "Total arguments: $#"
echo "All arguments: $@"
```

## ✅ Task 4: Install Packages via Script

### 'install_packages.sh'

```bash
#!/bin/bash

# Check if running as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script as root"
  exit 1
fi

PACKAGES=("nginx" "curl" "wget")

for pkg in "${PACKAGES[@]}"; do
  if dpkg -s $pkg &> /dev/null; then
    echo "$pkg is already installed"
  else
    echo "Installing $pkg..."
    apt-get install -y $pkg
  fi
done
```

## ✅ Task 5: Error Handling

### 'safe_script.sh'
```bash
#!/bin/bash
set -e

mkdir /tmp/devops-test || echo "Directory already exists"
cd /tmp/devops-test || echo "Cannot enter directory"
touch test.txt || echo "File creation failed"

echo "Script completed successfully"
```





























