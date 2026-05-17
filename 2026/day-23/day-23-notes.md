# Day 23 – Git Branching & Working with GitHub

## 📌 Overview

Today I learned how Git branching works and how to push multiple branches to GitHub.  
Branching allows isolated development without breaking the main branch.

---

# ✅ Task 1 – Understanding Branches

## 1. What is a branch in Git?

A branch is a movable pointer to a specific commit.  
It allows parallel development without affecting other branches.

---

## 2. Why do we use branches instead of committing everything to main?

Branches isolate work.  
The main branch should remain stable and production-ready.  
Features, bug fixes, and experiments are developed separately.

---

## 3. What is HEAD in Git?

HEAD is a pointer to the current branch and commit you are working on.  
It tells Git your current position in the repository.

---

## 4. What happens when you switch branches?

Git updates the working directory to match the selected branch’s latest commit.  
Files may change, appear, or disappear depending on that branch’s history.

---

# ✅ Task 2 – Branching Commands (Hands-On)

## List branches

```bash
git branch
```

## Create branch

```bash
git branch feature-1
```

## Switch to branch

```bash
git switch feature-1
```

## Create and switch in one command

```bash
git switch -c feature-2
```

## Delete branch

```bash
git branch -d feature-2
```

## Force delete branch

```bash
git branch -D feature-2
```

Verified that commits made in feature-1 were not visible in main until merged.

---

# ✅ Task 3 – Push to GitHub

## Add remote

```bash
git remote add origin https://github.com/YOUR_USERNAME/devops-git-practice.git
```

## Push main branch

```bash
git push -u origin main
```

## Push feature branch

```bash
git push -u origin feature-1
```

Verified both branches are visible on GitHub.

---

## Difference Between origin and upstream

origin:
The default remote name pointing to your repository (usually your fork).

upstream:
Refers to the original repository you forked from.  
Used to sync changes from the original project.

---

# ✅ Task 4 – Pull from GitHub

Made changes directly on GitHub and pulled them locally.

```bash
git pull origin main
```

## Difference Between git fetch and git pull

git fetch:
Downloads remote changes but does NOT merge them.

git pull:
Downloads and automatically merges changes.

pull = fetch + merge

---

# ✅ Task 5 – Clone vs Fork

## Clone

Creates a local copy of a repository.

```bash
git clone https://github.com/user/repo.git
```

## Fork

Creates your own copy of someone else's repository on GitHub.

Used when contributing to open-source projects.

---

## When to Use Clone vs Fork

Clone:
When you only need a local copy.

Fork:
When you want to contribute or modify a project you don't own.

---

## Keeping Fork in Sync

```bash
git remote add upstream https://github.com/original-owner/repo.git
git fetch upstream
git merge upstream/main
```

---

# 🚀 Key Learning

Branching enables safe, isolated development.

Workflow practiced:

Working Directory → Branch → Commit → Push → GitHub

This is the foundation of pull requests and CI/CD workflows.
