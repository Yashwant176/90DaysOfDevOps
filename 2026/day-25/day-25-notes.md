# Day 25 – Git Reset vs Revert & Branching Strategies

## 📌 Overview

Today I learned how to safely undo mistakes using:

- git reset
- git revert
- git reflog

I also explored real-world branching strategies used by engineering teams.

Understanding when to rewrite history vs preserve history is critical in production environments.

---

# ✅ Task 1 – Git Reset

## What is git reset?

git reset moves the branch pointer (HEAD) to a previous commit.

It can optionally modify:
- Staging area
- Working directory

---

## Difference Between --soft, --mixed, and --hard

### git reset --soft

- Removes commit
- Keeps changes staged
- Working directory unchanged

Used when:
You want to modify the last commit message or combine commits.

---

### git reset --mixed (default)

- Removes commit
- Unstages changes
- Keeps changes in working directory

Used when:
You want to rework the commit from scratch.

---

### git reset --hard

- Removes commit
- Clears staging area
- Deletes changes from working directory

This is destructive.

Used when:
You want to completely discard changes.

---

## Which One is Destructive?

git reset --hard

Because it permanently deletes uncommitted changes.

---

## Should You Use git reset on Pushed Commits?

No.

git reset rewrites history.

If commits are already pushed:
- Other developers’ history becomes inconsistent
- Requires force push
- Can break collaboration

Use git revert instead for shared branches.

---

# ✅ Task 2 – Git Revert

## What is git revert?

git revert creates a new commit that reverses the changes introduced by a specific commit.

It does not remove history.

---

## What Happens When Reverting a Middle Commit?

- The original commit remains in history.
- A new commit is created that undoes its changes.
- Conflicts may occur if the file changed afterward.

---

## How is git revert Different from git reset?

Reset:
- Moves branch pointer backward.
- Removes commits from history.
- Rewrites history.

Revert:
- Adds a new commit.
- Preserves history.
- Safe for shared branches.

---

## Why is revert safer for shared branches?

Because it does not change commit hashes or remove history.

Other collaborators are not affected.

---

## When to Use revert vs reset?

Use reset:
- For local mistakes
- Before pushing
- When cleaning up commit history

Use revert:
- On shared branches
- For production hotfix rollbacks
- When history must remain intact

---

# ✅ Task 3 – Reset vs Revert Comparison

| Feature | git reset | git revert |
|----------|------------|------------|
| What it does | Moves branch pointer backward | Creates new commit that undoes changes |
| Removes commit from history? | Yes | No |
| Safe for pushed/shared branches? | No | Yes |
| Changes commit hashes? | Yes | No |
| When to use | Fix local commits | Undo changes in shared branches |

---

# ✅ Task 4 – Branching Strategies

---

## 1️⃣ GitFlow

### How It Works

- main → production
- develop → integration branch
- feature branches → from develop
- release branches → before deployment
- hotfix branches → from main

### Flow

main  
 ├── hotfix  
develop  
 ├── feature  
 ├── release  

### Used In

- Large enterprises
- Teams with scheduled releases

### Pros

- Clear structure
- Strong release control

### Cons

- Complex
- Heavy process
- Slower delivery

---

## 2️⃣ GitHub Flow

### How It Works

- Single main branch
- Short-lived feature branches
- Pull request → review → merge → deploy

### Flow

main  
 ├── feature → PR → merge  

### Used In

- Startups
- SaaS companies
- Continuous deployment teams

### Pros

- Simple
- Fast
- Easy CI/CD integration

### Cons

- Requires strong automated testing

---

## 3️⃣ Trunk-Based Development

### How It Works

- Everyone commits to main (trunk)
- Very short-lived branches
- Frequent integration

### Flow

main (trunk)  
 ├── short-lived branches  

### Used In

- High-performance engineering teams
- Large-scale tech companies

### Pros

- Minimal merge conflicts
- Continuous integration
- Fast delivery

### Cons

- Requires mature CI/CD
- Strict discipline needed

---

## Strategy Selection

For a startup shipping fast:
GitHub Flow

For a large team with scheduled releases:
GitFlow

Many open-source projects (like Kubernetes):
Use GitHub Flow with release branches.

---

# ✅ Safety Net – git reflog

git reflog shows every movement of HEAD.

Even after git reset --hard, commits can often be recovered using reflog.

Example:

git reflog

---

# 🚀 Key Learning

- reset rewrites history
- revert preserves history
- hard reset is destructive
- reflog can recover lost commits
- branching strategy impacts team velocity and stability

Understanding these concepts is essential for safe and scalable DevOps workflows.
