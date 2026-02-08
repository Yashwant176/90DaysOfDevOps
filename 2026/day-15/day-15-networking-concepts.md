# Day 15 – Networking Concepts: DNS, IP, Subnets & Ports

---

## Task 1: DNS – How Names Become IPs

### 1. What happens when you type google.com in a browser?
When I type `google.com`, my system first checks the local DNS cache.  
If not found, it queries a DNS resolver, which asks root → TLD → authoritative DNS servers.  
The authoritative server returns the IP address, and the browser connects to that IP.

---

### 2. DNS Record Types
- **A**: Maps a domain name to an IPv4 address  
- **AAAA**: Maps a domain name to an IPv6 address  
- **CNAME**: Alias of one domain to another domain  
- **MX**: Mail server responsible for receiving emails  
- **NS**: Name servers for a domain  

---

### 3. dig google.com
Command:
```bash
dig google.com
