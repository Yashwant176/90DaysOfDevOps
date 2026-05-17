# Day 28 – Revision Day (Days 1–27)

## 📌 Overview

Today I revised everything from Day 1 to Day 27.

Instead of learning new concepts, I focused on:
- Identifying weak spots
- Re-doing hands-on tasks
- Answering questions from memory
- Verifying practical understanding

The goal was clarity and confidence.

---

# ✅ Task 1 – Self Assessment Checklist

## 🐧 Linux

✔ Navigate file system, manage files  
✔ Manage processes (ps, top, kill, bg/fg)  
✔ Work with systemd (systemctl start/stop/status/enable)  
✔ Edit files using nano/vim  
✔ Troubleshoot CPU, memory, disk (top, free, df, du)  
✔ Explain Linux file system hierarchy  
✔ Manage users and groups  
✔ Set file permissions (chmod numeric & symbolic)  
✔ Change ownership (chown, chgrp)  
✔ Create/manage LVM volumes  
✔ Check connectivity (ping, curl, ss, dig)  
✔ Explain DNS, IP, subnets, common ports  

---

## 🐚 Shell Scripting

✔ Variables, arguments, user input  
✔ if/elif/else and case  
✔ for, while, until loops  
✔ Functions with parameters  
✔ grep, awk, sed, sort, uniq  
✔ Error handling (set -euo pipefail, trap)  
✔ crontab scheduling  

Need to revisit:
- Advanced awk usage
- More robust error trapping scenarios

---

## 🌿 Git & GitHub

✔ Init, add, commit, log  
✔ Branching and switching  
✔ Push/pull  
✔ Clone vs fork  
✔ Merge (fast-forward & merge commit)  
✔ Rebase vs merge  
✔ Stash & pop  
✔ Cherry-pick  
✔ Squash merge  
✔ Reset vs revert  
✔ Branching strategies  
✔ GitHub CLI (repos, PRs, issues)  

Need to revisit:
- Rebase conflict resolution
- Advanced git reflog recovery

---

# ✅ Task 2 – Revisited Weak Spots

## 1️⃣ Rebase Conflict Resolution

Re-learned:
- Rebase rewrites commit history.
- Conflicts must be resolved manually.
- After fixing conflict:
  git add <file>
  git rebase --continue

Key reminder:
Never rebase shared/pushed branches.

---

## 2️⃣ git reflog Recovery

Re-learned:
- reflog tracks HEAD movements.
- Even after git reset --hard, commits can be recovered.
- Recovery:
  git reflog
  git reset --hard <commit-hash>

Reflog is a safety net.

---

## 3️⃣ Advanced awk Usage

Re-practiced:
awk '{print $1}'
awk -F ":" '{print $1}'

Understood:
- Field separators
- Pattern matching
- Basic data extraction from logs

---

# ✅ Task 3 – Quick Fire Answers (From Memory)

### 1️⃣ What does chmod 755 script.sh do?

Owner: read, write, execute  
Group: read, execute  
Others: read, execute  

Makes script executable by everyone, writable only by owner.

---

### 2️⃣ Process vs Service?

Process:
Running instance of a program.

Service:
A background process managed by systemd, usually long-running.

---

### 3️⃣ Find which process is using port 8080?

ss -tulpn | grep 8080

or

lsof -i :8080

---

### 4️⃣ What does set -euo pipefail do?

-e → exit if command fails  
-u → error on undefined variables  
-o pipefail → fail if any command in pipeline fails  

Makes scripts safer and more predictable.

---

### 5️⃣ git reset --hard vs git revert?

reset --hard:
Removes commits and deletes changes (history rewrite).

revert:
Creates new commit that undoes changes (safe for shared branches).

---

### 6️⃣ Branching strategy for 5 developers shipping weekly?

GitHub Flow.

Simple, fast, PR-based, suitable for frequent releases.

---

### 7️⃣ What does git stash do?

Temporarily saves uncommitted changes.

Used when switching branches without committing incomplete work.

---

### 8️⃣ Schedule script daily at 3 AM?

crontab -e

Add:

0 3 * * * /path/to/script.sh

---

### 9️⃣ git fetch vs git pull?

fetch:
Downloads changes but does not merge.

pull:
Fetch + merge.

---

### 🔟 What is LVM and why use it?

LVM (Logical Volume Manager):

Allows flexible disk management.

Benefits:
- Resize volumes
- Combine multiple disks
- Snapshot support
- More flexible than fixed partitions

---

# ✅ Task 4 – Organization Check

✔ All day-1 to day-27 committed  
✔ git-commands.md updated  
✔ Shell cheat sheet complete  
✔ GitHub profile organized  
✔ No secrets exposed  

---

# ✅ Task 5 – Teach It Back

## Explaining Git Branching to a Non-Developer

Imagine you are writing a book.

The main story is your main branch.

If you want to try a new chapter idea without ruining the original story, you create a copy and experiment on it.

That copy is a branch.

If the experiment works, you merge it back into the main story.

If it doesn’t, you delete the branch.

Branches allow safe experimentation without breaking production code.

---

# 🎯 Final Reflection

After 28 days:

- I understand Linux beyond basic commands.
- I can write practical shell scripts.
- I understand Git deeply, not just basic commits.
- My GitHub profile reflects intentional learning.
- I am building structured DevOps foundations.

Revision confirmed that concepts are not just memorized — they are practiced.
