# Day 24 – Advanced Git: Merge, Rebase, Stash & Cherry Pick

## 📌 Overview

Today I practiced advanced Git operations that are commonly used in real-world DevOps workflows:

- Merge (fast-forward & merge commit)
- Rebase
- Squash merge
- Stash
- Cherry-pick

These commands control how history is structured and how teams collaborate safely.

---

# ✅ Task 1 – Git Merge

## Fast-Forward Merge

A fast-forward merge happens when the target branch has not moved ahead.

Git simply moves the branch pointer forward.

No merge commit is created.

---

## Merge Commit

A merge commit is created when two branches have diverged.

Git combines both histories and creates a new commit with two parents.

---

## Merge Conflict

A merge conflict occurs when the same line of the same file is modified differently in two branches.

Git cannot decide automatically and requires manual resolution.

Conflict markers:

<<<<<<< HEAD  
Current branch code  
=======  
Incoming branch code  
>>>>>>> branch-name  

After resolving:

git add <file>  
git commit  

---

# ✅ Task 2 – Git Rebase

## What Rebase Does

Rebase rewrites history by taking commits from the current branch and replaying them on top of another branch.

It creates new commits with new commit hashes.

---

## Merge vs Rebase History

Merge:
- Preserves branch structure
- Creates merge commits
- Non-linear history

Rebase:
- Linear history
- No merge commit
- Rewrites commit hashes

---

## Why Not Rebase Shared Branches?

Rebase changes commit hashes.

If commits are already pushed and shared:
- Other developers’ history breaks
- Conflicts become complicated

Rule:
Never rebase public/shared branches.

---

## When to Use Rebase vs Merge

Use Rebase:
- To clean local feature branch history
- Before merging into main

Use Merge:
- For shared branches
- When preserving historical context is important

---

# ✅ Task 3 – Squash Merge vs Regular Merge

## Squash Merge

Command:
git merge --squash feature-profile

Squash combines all feature branch commits into a single commit before merging.

Result:
Main branch receives only one commit.

---

## Regular Merge

Command:
git merge feature-settings

Preserves all individual commits and may create a merge commit.

---

## Trade-Off of Squashing

Pros:
- Cleaner history
- One feature = one commit
- Easier code review

Cons:
- Individual commit history is lost
- Harder to trace granular development steps

---

# ✅ Task 4 – Git Stash

## What is Stash?

Stash temporarily saves uncommitted changes.

Useful for switching branches without committing incomplete work.

---

## stash pop vs stash apply

git stash pop:
- Applies stash
- Removes it from stash list

git stash apply:
- Applies stash
- Keeps it in stash list

pop = apply + delete

---

## Real-World Usage

- Urgent production fix while working on feature
- Temporary context switching
- Avoiding unnecessary WIP commits

---

# ✅ Task 5 – Cherry Pick

## What Cherry-Pick Does

Cherry-pick applies a specific commit from one branch onto another branch.

It creates a new commit with the same changes but a different commit hash.

---

## When to Use Cherry-Pick

- Apply hotfix to production without merging full feature branch
- Backport fixes to release branches
- Selectively apply specific changes

---

## Risks of Cherry-Picking

- Duplicate commits in history
- Merge conflicts
- Confusion if overused

Cherry-pick should be used carefully.

---

# 🚀 Key Learning

Advanced Git commands control:

- How history is structured
- How teams collaborate
- How production hotfixes are handled
- How clean commit history is maintained

These operations are essential for professional DevOps workflows.
