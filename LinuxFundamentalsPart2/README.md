---
title: Linux Fundamentals 2
user: bung3r
description: Continue your learning Linux journey with part two. You will be learning how to log in to a Linux machine using SSH, how to advance your commands, file system interaction.
tags:
  - linux
---

# [LinuxFundamentalsPart2](https://tryhackme.com/room/linuxfundamentalspart2)

- Remove directory:

```bash
rm -R directory
```

- Switch user:

```bash
su user2
```

- Switch user with -l or --login flag, which starts a shell similar to the actual user logging into the system:

```bash
su -l user2
```

## IMPORTANT DIRECTORIES

### /etc 

- System files used by the OS. Important: passd, shadow (used to show the user passwords are encrypted using sha512), sudoers, sudoers.d (list of users that have permission to run sudo or a set of commands as the root user).

### /var (variable data)

- Stores data that is frequently accessed or written by services or applications. Log files (/var/log), databases: backups, log, opt, tmp. 

### /root

- The home for the 'root' system user and NOT /home/root

### /tmp (temporary)

- Is volatile, once we restart the computer everything written here is deleted, similar to memory on our computers (RAM). Any user can write to this folder by default.
