# Day 14 – Networking Fundamentals

## OSI vs TCP/IP (Quick Notes)
- OSI has 7 layers; TCP/IP groups them into 4
- IP works at Network layer; TCP/UDP at Transport
- HTTP/HTTPS and DNS are Application layer protocols

Example:
curl https://google.com = Application (HTTP) over TCP over IP

---

## Hands-on Checks

### Identity
Command: hostname -I  
Observation: Shows the IP address assigned to my machine.

---

### Reachability
Command: ping -c 4 google.com  
Observation: Replies received with low latency and no packet loss.

---

### Path
Command: traceroute google.com  
Observation: Multiple hops; some routers do not respond (timeouts).

---

### Ports
Command: ss -tulpn  
Observation: SSH is listening on port 22.

---

### DNS Resolution
Command: dig google.com  
Observation: Domain resolved to multiple IP addresses.

---

### HTTP Check
Command: curl -I https://google.com  
Observation: HTTP status 200 OK received.

---

### Connections Snapshot
Command: netstat -an | head  
Observation: Shows LISTEN and ESTABLISHED connections.

---

## Mini Task – Port Probe
Command: nc -zv localhost 22  
Result: Port reachable.

If not reachable:
- Check SSH service status
- Check firewall rules

---

## Reflection
- Fastest signal command: ping / curl
- If DNS fails: check Application layer (DNS) first
- If HTTP 500: inspect Application logs and service status

Next checks in real incident:
- systemctl status <service>
- journalctl -u <service>
