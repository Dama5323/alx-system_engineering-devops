# 0x0F. Load Balancer

## 📌 Project Overview

This project is part of the ALX System Engineering & DevOps track. The objective is to set up a highly available infrastructure using multiple web servers and a load balancer. This increases redundancy and scalability, ensuring that if one server fails, the other can handle traffic.

---

## 🧪 Task 0: Double the number of webservers

### Objective

Configure a second web server (`web-02`) to match the setup of the first one (`web-01`) using automation. Also, configure both servers to return a custom HTTP response header so we can identify which server handled a request.

### Requirements

- Install and configure **Nginx** on a new Ubuntu 16.04 server.
- Add a custom HTTP response header:  
  **`X-Served-By: <hostname>`**
- Script must be executable and pass Shellcheck (ignore SC2154).

---

## 📁 File Descriptions

### `0-custom_http_response_header`

- Bash script that:
  - Installs Nginx
  - Sets the `X-Served-By` header to the server's hostname
  - Ensures the configuration is applied via Nginx restart

### Usage

```bash
chmod +x 0-custom_http_response_header
sudo ./0-custom_http_response_header
