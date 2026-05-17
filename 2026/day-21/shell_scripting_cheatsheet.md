# Shell Scripting Cheat Sheet
> 90DaysOfDevOps – Day 21  
> Practical quick reference for real-world DevOps usage

---

# 📌 Quick Reference Table

| Topic | Key Syntax | Example |
|-------|------------|----------|
| Variable | VAR="value" | NAME="DevOps" |
| Argument | $1, $2 | ./script.sh arg1 |
| If | if [ condition ]; then | if [ -f file ]; then |
| For loop | for i in list; do | for i in 1 2 3; do |
| Function | name() { ... } | greet() { echo "Hi"; } |
| Grep | grep pattern file | grep -i "error" log.txt |
| Awk | awk '{print $1}' file | awk -F: '{print $1}' /etc/passwd |
| Sed | sed 's/old/new/g' file | sed -i 's/foo/bar/g' config.txt |

---

# 1️⃣ Basics

## Shebang
Defines which interpreter runs the script.
```bash
#!/bin/bash
```

## Running a Script
```bash
chmod +x script.sh
./script.sh
bash script.sh
```

## Comments
```bash
# Single line comment
echo "Hello"  # Inline comment
```

## Variables
```bash
VAR="Hello"
echo $VAR
echo "$VAR"   # Safe quoting (recommended)
echo '$VAR'   # Literal string
```

## Reading User Input
```bash
read NAME
echo "Hello $NAME"
```

## Command-Line Arguments
```bash
echo $0   # Script name
echo $1   # First argument
echo $#   # Number of arguments
echo $@   # All arguments
echo $?   # Last exit code
```

---

# 2️⃣ Operators and Conditionals

## String Comparisons
```bash
[ "$A" = "$B" ]
[ "$A" != "$B" ]
[ -z "$VAR" ]   # Empty string
[ -n "$VAR" ]   # Not empty
```

## Integer Comparisons
```bash
[ "$A" -eq 10 ]
[ "$A" -ne 5 ]
[ "$A" -lt 5 ]
[ "$A" -gt 5 ]
[ "$A" -le 5 ]
[ "$A" -ge 5 ]
```

## File Test Operators
```bash
[ -f file ]   # Regular file
[ -d dir ]    # Directory
[ -e file ]   # Exists
[ -r file ]   # Readable
[ -w file ]   # Writable
[ -x file ]   # Executable
[ -s file ]   # Not empty
```

## If / Elif / Else
```bash
if [ -f file ]; then
  echo "File exists"
elif [ -d dir ]; then
  echo "Directory exists"
else
  echo "Not found"
fi
```

## Logical Operators
```bash
[ -f file ] && echo "Exists"
[ -f file ] || echo "Missing"
! [ -f file ]
```

## Case Statement
```bash
case $1 in
  start) echo "Starting" ;;
  stop) echo "Stopping" ;;
  *) echo "Usage: start|stop" ;;
esac
```

---

# 3️⃣ Loops

## For Loop (List)
```bash
for i in 1 2 3; do
  echo $i
done
```

## For Loop (C-style)
```bash
for ((i=0; i<5; i++)); do
  echo $i
done
```

## While Loop
```bash
COUNT=0
while [ $COUNT -lt 5 ]; do
  echo $COUNT
  ((COUNT++))
done
```

## Until Loop
```bash
COUNT=0
until [ $COUNT -eq 5 ]; do
  echo $COUNT
  ((COUNT++))
done
```

## Loop Control
```bash
break
continue
```

## Loop Over Files
```bash
for file in *.log; do
  echo $file
done
```

## Loop Over Command Output
```bash
ps aux | while read line; do
  echo "$line"
done
```

---

# 4️⃣ Functions

## Define Function
```bash
greet() {
  echo "Hello"
}
```

## Call Function
```bash
greet
```

## Passing Arguments
```bash
add() {
  echo $(($1 + $2))
}

add 5 3
```

## Return vs Echo
```bash
myfunc() {
  return 1   # Exit code only
}
```

Capture output with echo:
```bash
result=$(add 2 3)
```

## Local Variables
```bash
myfunc() {
  local VAR="private"
}
```

---

# 5️⃣ Text Processing Commands

## grep
```bash
grep "error" file
grep -i "error" file
grep -r "error" /var/log
grep -c "error" file
grep -n "error" file
grep -v "info" file
grep -E "error|fail" file
```

## awk
```bash
awk '{print $1}' file
awk -F: '{print $1}' /etc/passwd
awk '/error/ {print $0}' file
awk 'BEGIN {print "Start"} END {print "End"}' file
```

## sed
```bash
sed 's/old/new/g' file
sed -i 's/foo/bar/g' file
sed '5d' file
```

## cut
```bash
cut -d: -f1 /etc/passwd
cut -c1-5 file
```

## sort
```bash
sort file
sort -n file
sort -r file
sort -u file
```

## uniq
```bash
uniq file
uniq -c file
```

## tr
```bash
echo "hello" | tr 'a-z' 'A-Z'
tr -d '\n'
```

## wc
```bash
wc -l file
wc -w file
wc -c file
```

## head / tail
```bash
head -n 10 file
tail -n 20 file
tail -f /var/log/syslog
```

---

# 6️⃣ Useful Real-World One-Liners

## Delete files older than 7 days
```bash
find /tmp -type f -mtime +7 -delete
```

## Count lines in all .log files
```bash
wc -l *.log
```

## Replace string across multiple files
```bash
sed -i 's/old/new/g' *.conf
```

## Check if a service is running
```bash
systemctl is-active nginx
```

## Monitor disk usage and alert if above 80%
```bash
df -h | awk '$5+0 > 80 {print "High usage on " $6}'
```

## Tail log and filter errors in real time
```bash
tail -f app.log | grep --line-buffered "ERROR"
```

---

# 7️⃣ Error Handling & Debugging

## Exit Codes
```bash
echo $?
exit 0   # Success
exit 1   # Failure
```

## Exit on First Error
```bash
set -e
```

## Fail on Unset Variables
```bash
set -u
```

## Catch Pipe Failures
```bash
set -o pipefail
```

## Debug Mode (Trace Execution)
```bash
set -x
```

## Trap for Cleanup
```bash
trap 'echo "Cleaning up"; rm -f temp.txt' EXIT
```

---

# ✅ Production Best Practices

- Always quote variables: "$VAR"
- Use `set -euo pipefail` in production scripts
- Check exit codes explicitly when required
- Do not parse `ls` output
- Use functions to structure logic
- Log errors properly
- Validate input arguments

---
