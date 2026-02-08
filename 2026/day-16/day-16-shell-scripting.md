# Day 16 – Shell Scripting Basics 

## 📌 Overview
On Day 16 of **#90DaysOfDevOps**, I learned the fundamentals of shell scripting including shebang, variables, user input, and conditional logic.

---

## ✅ Task 1: Your First Script

### `hello.sh`
```bash
#!/bin/bash
echo "Hello, DevOps!"
```

## Commands:
```bash
chmod +x hello.sh
./hello.sh
```
## Output:
Hello, Devops!

## ✅ Task 2: Variables

### 'variables.sh'
```bash
#!/bin/bash

NAME="Yash"
ROLE="DevOps Engineer"

echo "Hello, I am $NAME and I am a $ROLE"
```
## Output:
Hello, I am Yash and I am a DevOps Engineer

## ✅ Task 3: User Input with read

### 'greet.sh'
```bash
#!/bin/bash

read -p "Enter your name: " NAME
read -p "Enter your favourite tool: " TOOL

echo "Hello $NAME, your favourite tool is $TOOL"
```
## Output:
Enter your name: Yash
Enter your favourite tool: Docker
Hello Yash, your favourite tool is Docker

## ✅ Task 4: If-Else Conditions

### 'check_number.sh'
```bash
#!/bin/bash

read -p "Enter a number: " NUM

if [ $NUM -gt 0 ]; then
  echo "The number is positive"
elif [ $NUM -lt 0 ]; then
  echo "The number is negative"
else
  echo "The number is zero"
fi
```

### 'file_check.sh'
```bash
#!/bin/bash

read -p "Enter filename: " FILE

if [ -f "$FILE" ]; then
  echo "File exists"
else
  echo "File does not exist"
fi
```

## ✅ Task 5: Combine It All – Service Status Check

### server_check.sh
```bash
#!/bin/bash

SERVICE="nginx"

read -p "Do you want to check the status of $SERVICE? (y/n): " CHOICE

if [ "$CHOICE" = "y" ]; then
  systemctl is-active --quiet $SERVICE
  if [ $? -eq 0 ]; then
    echo "$SERVICE is active"
  else
    echo "$SERVICE is not active"
  fi
else
  echo "Skipped."
fi
```






































