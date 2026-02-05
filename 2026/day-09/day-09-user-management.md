# Day 09 Challenge – Linux User & Group Management

## Users & Groups Created
- Users: tokyo, berlin, professor, nairobi
- Groups: developers, admins, project-team

## Group Assignments
- tokyo → developers, project-team
- berlin → developers, admins
- professor → admins
- nairobi → project-team

## Directories Created
- /opt/dev-project → group: developers → permissions: 775
- /opt/team-workspace → group: project-team → permissions: 775

## Commands Used
- useradd, passwd
- groupadd
- usermod -aG
- chgrp, chmod
- groups, ls -ld
- sudo -u username command

## What I Learned
- How Linux manages users and groups
- How group permissions enable team collaboration
- How to safely test permissions using sudo -u
