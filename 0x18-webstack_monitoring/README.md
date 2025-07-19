# 0x18. Webstack Monitoring

## Description

This project focuses on integrating **Datadog**, a monitoring and analytics platform, to monitor a web server (`web-01`) as part of ALX's system engineering and DevOps curriculum.

The goal is to:
- Install the Datadog agent on an Ubuntu server.
- Configure it with a custom hostname.
- Validate that the host appears in the Datadog infrastructure dashboard.
- Learn about cloud-based monitoring best practices.

---

## Installation Script

A Bash script named `0-setup_datadog` is provided to automate the setup.

### 🔧 Script Features:
- Installs the Datadog Agent using the API key.
- Sets a custom hostname (`dc-web-01`).
- Adds tags for environment labeling.
- Restarts the Datadog agent to apply configuration.

### 📁 Usage:
```bash
chmod +x 0-setup_datadog
./0-setup_datadog


---

## Task: Monitor Some Metrics

We set up two system monitors in Datadog:

1. **Read requests issued to device per second**
   - Metric: `system.disk.reads`
   - Alert triggers if the average over 5 minutes exceeds 100 reads/sec

2. **Write requests issued to device per second**
   - Metric: `system.disk.writes`
   - Alert triggers if the average over 5 minutes exceeds 100 writes/sec

These monitors help track disk I/O activity, useful for scaling decisions and performance troubleshooting.
