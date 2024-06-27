---
layout: default
title: Linux Basic commands
---

# Basic Linux Commands

Linux is a powerful and versatile operating system that is widely used in various environments, from personal computers to servers. Here are some of the basic commands that are essential for working with Linux.

## Table of Contents

1. [Introduction](#introduction)
2. [File and Directory Commands](#file-and-directory-commands)
3. [File Permissions](#file-permissions)
4. [Process Management](#process-management)
5. [System Information](#system-information)
6. [Networking](#networking)
7. [Package Management](#package-management)
8. [Conclusion](#conclusion)

## Introduction

Linux commands are used to interact with the system via the terminal. The terminal is a powerful tool that allows users to perform a variety of tasks more efficiently than using a graphical user interface.

## File and Directory Commands

### `ls`
The `ls` command lists the contents of a directory.
```bash
ls
```
## Options:

	•	-l: Lists in long format.
	•	-a: Shows hidden files.

## cd

The cd command changes the current directory.

```bash
cd /path/to/directory
```
## pw
The `pwd` command prints the current working directory.
```bash
pwd
```

## mkdir
`mkdir` command creates a new directory.
```bash
mkdir new_directory
```

## rmdir
`rmdir` command removes an empty directory.
```bash
rmdir directory_name
```

## rm
The `rm` command removes files or directories.
```bash
rm filename
```

## Options:

	•	-r: Removes directories and their contents recursively.
	•	-f: Forces removal without prompt.

 ## cp
 The `cp` command copies files or directories.
 ```bash
cp source destination
```
## Options:

	•	-r: Copies directories recursively.
## mv

The mv command moves or renames files or directories.
 ```bash
mv source destination
```
## touch

The touch command creates an empty file or updates the timestamp of an existing file.
```bash
touch file_name
```
## chmod
The `chmod` command changes file permissions.
```bash
chmod 755 file_name
```
Permission codes:

	•	r: Read (4)
	•	w: Write (2)
	•	x: Execute (1)

## chown

The chown command changes the owner of a file or directory.
```bash
chown user:group file_name
```
## chgrp
The `chgrp` command changes the group ownership of a file or directory.
```bash
chgrp group_name file_name
```
# Process Management

## ps

The `ps` command displays information about active processes.
```bash
ps
```
## Options:

	•	-e: Shows all processes.
	•	-f: Full-format listing.

## top

The top command displays real-time system summary information and a list of processes.
```bash
top
```
## kill
The `kill` command sends a signal to a process.
```bash
kill PID
```
## Common signals:

	•	-9: Force kill.

## killall

The killall command kills all processes with the given name.
```bash
killall process_name
```
## bg
The `bg` command resumes a suspended job in the background.
```bash
bg job_id
```

## fg
The `fg` command brings a background job to the foreground.
```bash
fg job_id
```
# System Information

## uname

The `uname` command displays system information.
```bash
uname
```
Options:

	•	-a: All information.
	•	-r: Kernel release.

## df

The `df` command reports file system disk space usage.
```bash
df
```
## Options:

	•	-h: Human-readable format.

## du

The `du` command estimates file space usage.
```bash
du
```
## Options:

	•	-h: Human-readable format.
	•	-s: Summary of a directory.

## free

The `free` command displays memory usage.
```bash
free
```
## Options:

	•	-h: Human-readable format.

## uptime

The `uptime` command tells how long the system has been running.
```bash
uptime
```
## who
The `who` command shows who is logged on.
```bash
who
```
# Networking

## ifconfig

The `ifconfig` command configures network interfaces.
```bash
ifconfig
```

## ping
The `ping` command checks the network connection to a server.
```bash
ping host
```
## netstat
The netstat command displays network connections, routing tables, and interface statistics.
```bash
netstat
```

## ssh
The `ssh` command connects to a remote machine via SSH.
```bash
ssh user@host
```

## scp
The `scp` command copies files between hosts on a network.
```bash
scp source_file user@host:destination_path
```
# Package Management

## apt

The apt command is used for package management in Debian-based distributions.
```bash
sudo apt update
sudo apt install package_name
sudo apt remove package_name
```
## yum
The `yum` command is used for package management in Red Hat-based distributions.
```bash
sudo yum update
sudo yum install package_name
sudo yum remove package_name
```
## dnf

The dnf command is the next-generation version of yum for Fedora.
```bash
sudo dnf update
sudo dnf install package_name
sudo dnf remove package_name
```
# Conclusion
This guide covers some of the basic commands you will use frequently when working with Linux. Mastering these commands will help you navigate and manipulate your system more effectively. There are many more commands and options available, and exploring the man pages for each command can provide additional insights and capabilities.
