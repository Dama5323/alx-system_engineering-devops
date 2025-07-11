# 0x10-https_ssl

## Task: 0-world_wide_web

This project configures DNS subdomains and implements a script to audit DNS A records.

### Script

- **0-world_wide_web**
  - Takes a domain (mandatory) and optional subdomain as arguments.
  - Outputs the A record information for:
    - `www`, `lb-01`, `web-01`, and `web-02` when only the domain is passed.
    - The specified subdomain if provided.

### Usage

```bash
./0-world_wide_web example.com
./0-world_wide_web example.com web-02
```
---

### Requirements
Shellcheck (0.3.7) compliant

Uses: dig, awk, bash functions


---

### ✅ **Make the script executable**
```
chmod +x 0-world_wide_web
```