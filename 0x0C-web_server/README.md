# 0x0C. Web server

## Description

This project focuses on managing and configuring web servers using command line tools. It covers essential topics such as transferring files to remote servers, installing and configuring Nginx, managing processes without `systemctl`, and automating deployment using shell scripts.

The tasks in this project were designed to provide hands-on experience with:

- Secure file transfer using `scp`
- Configuring a web server (Nginx)
- Managing server processes
- Automating server setup using Bash scripts

## Files and Usage

### `0-transfer_file`
A Bash script that securely transfers a file from the client machine to the home directory (`~/`) of a remote server using `scp`.

#### Usage:
```bash
./0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY
