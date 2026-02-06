# Day 11 – File Ownership Challenge

## Files & Directories Created
- devops-file.txt
- team-notes.txt
- project-config.yaml
- app-logs/
- heist-project/
- bank-heist/

## Ownership Changes
- devops-file.txt → tokyo → berlin
- team-notes.txt → group changed to heist-team
- project-config.yaml → professor:heist-team
- app-logs/ → berlin:heist-team
- heist-project/ → professor:planners (recursive)
- bank-heist files assigned to different users & groups

## Commands Used
- chown, chgrp
- chown -R
- useradd, groupadd
- ls -l, ls -lR

## What I Learned
- Difference between owner and group
- How chown can change owner and group together
- Why recursive ownership is critical for projects
