# Day 08 – Cloud Server Setup

## Commands Used
- ssh -i key.pem ubuntu@<ip>
- sudo apt update && sudo apt upgrade -y
- sudo apt install docker.io -y
- sudo apt install nginx -y
- systemctl status nginx
- cat /var/log/nginx/access.log
- scp nginx-logs.txt

## Challenges Faced
- Initially nginx page was not accessible
- Fixed by allowing port 80 in security group

## What I Learned
- How to launch and connect to a cloud server
- Installing and managing services using systemctl
- Configuring security groups for web access
- Extracting and downloading logs from a server
