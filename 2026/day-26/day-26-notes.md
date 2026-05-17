# Day 26 – GitHub CLI (gh): Manage GitHub from Your Terminal

## 📌 Overview

Today I learned how to manage GitHub entirely from the terminal using the GitHub CLI (`gh`).

This allows DevOps engineers to:
- Create repositories
- Manage issues
- Create and merge pull requests
- Monitor workflows
- Automate GitHub operations

All without switching to the browser.

---

# ✅ Task 1 – Install & Authenticate

## Installation

Installed GitHub CLI using package manager.

Verified installation:

gh --version

---

## Authentication

Authenticated using:

gh auth login

Verified login:

gh auth status

---

## What Authentication Methods Does gh Support?

- Browser-based OAuth login (recommended)
- Personal Access Token (PAT)
- SSH authentication (if configured)

---

# ✅ Task 2 – Working with Repositories

## Create Repository from Terminal

gh repo create repo-name --public --add-readme --clone

This:
- Creates repo on GitHub
- Adds README
- Clones locally

---

## Clone Using gh

gh repo clone owner/repo-name

---

## View Repository Details

gh repo view

---

## List All My Repositories

gh repo list

---

## Open Repository in Browser

gh repo view --web

---

## Delete Repository

gh repo delete repo-name --confirm

---

# ✅ Task 3 – Issues

## Create Issue

gh issue create --title "Issue title" --body "Issue description" --label bug

---

## List Issues

gh issue list

---

## View Specific Issue

gh issue view 1

---

## Close Issue

gh issue close 1

---

## How Could gh issue Be Used in Automation?

- Automatically create issues when CI fails
- Create monitoring alerts as GitHub issues
- Auto-log production incidents
- Nightly failure reporting scripts

Example:

gh issue create --title "Nightly Build Failed" --body "Check CI logs"

---

# ✅ Task 4 – Pull Requests

## Create Branch and Push

git switch -c feature-cli-test
git add .
git commit -m "Test change"
git push -u origin feature-cli-test

---

## Create Pull Request

gh pr create --fill

---

## List Open PRs

gh pr list

---

## View PR Details

gh pr view 1

---

## Merge PR

gh pr merge 1 --merge

---

## Merge Methods Supported

- --merge (merge commit)
- --squash
- --rebase

---

## How to Review Someone Else’s PR?

Checkout PR locally:

gh pr checkout 5

Approve PR:

gh pr review 5 --approve

Request changes:

gh pr review 5 --request-changes --body "Needs updates"

---

# ✅ Task 5 – GitHub Actions (Preview)

## List Workflow Runs

gh run list

---

## View Specific Run

gh run view <run-id>

---

## How Could gh run and gh workflow Be Useful in CI/CD?

- Monitor pipeline status from terminal
- Debug failed workflow runs
- Trigger workflow re-runs
- Integrate into automation scripts
- Track deployments programmatically

Useful in production CI/CD pipelines.

---

# ✅ Task 6 – Useful gh Commands

## gh api

Make raw GitHub API calls.

gh api repos/:owner/:repo

Useful for automation and scripting.

---

## gh gist

Create and manage GitHub Gists.

gh gist create file.txt

---

## gh release

Create releases from terminal.

gh release create v1.0.0

---

## gh alias

Create shortcuts for frequent commands.

gh alias set prc "pr create --fill"

---

## gh search repos

Search repositories directly from terminal.

gh search repos devops

---

# 🚀 Key Learning

GitHub CLI enables full repository management without leaving the terminal.

For DevOps engineers, this improves:
- Speed
- Automation
- Context retention
- CI/CD scripting capability

Terminal-first GitHub management is a production-level workflow skill.
