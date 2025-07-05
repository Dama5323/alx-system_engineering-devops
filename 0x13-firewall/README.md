# 0x13. Firewall

This project is part of the **ALX System Engineering & DevOps** curriculum. It focuses on understanding firewalls and configuring them using **UFW (Uncomplicated Firewall)** on a Linux server.

---

## 🔥 Project Objectives

- Understand what a firewall is and how it works.
- Learn the difference between network-based and host-based firewalls.
- Use `ufw` to configure basic firewall rules.
- Secure a server by only allowing specific ports.

---

## ✅ Task: Block All Incoming Traffic Except Required Ports

### Requirements:
- Apply the configuration on `web-01` server.
- Block all **incoming traffic** except for the following TCP ports:
  - **22** (SSH)
  - **80** (HTTP)
  - **443** (HTTPS)
  
### File:
- `0-block_all_incoming_traffic_but`: Bash script that sets up the required firewall rules.

---

## 📜 Script Breakdown

```bash
#!/bin/bash
sudo apt-get install ufw -y
sudo ufw allow 22/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable
