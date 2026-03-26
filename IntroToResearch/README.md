---
user: bung3r
date: 09.02.22
description: A brief introduction to research skills for pentesting.
tags: 
- cve 
- man
---


# [Intro to Research](https://tryhackme.com/room/introtoresearch)

## Research Questions

### Questions

1. In the Burp Suite Program that ships with Kali Linux, what mode would you use to manually send a request (often repeating a captured request numerous times)?

R: Repeater

2. What hash format are modern Windows login passwords stored in?

R: NTLM

3. What are automated tasks called in Linux?

R: Cron Jobs

4. What number base could you use as a shorthand for base 2 (binary)?

R: Base 16

5. If a password hash starts with $6$, what format is it (Unix variant)?

R: SHA512crypt

## Vulnerability Searching

- Websites to search for vulnerabilities on specific software/ frameworks:

	- [ExploitDB](https://www.exploit-db.com/) -> contains exploits that can be used straight away. On linux, we can use *searchsploit* which is an offline version of ExploitDB.

	- [NVD](https://nvd.nist.gov/vuln/search) -> keeps track of *CVEs* (*Common Vulnerabilities and Exposures*)
	
	- [CVE Mitre](https://cve.mitre.org/)

### Questions

1. What is the CVE for the 2020 Cross-Site Scripting (XSS) vulnerability found in WPForms?

R: CVE-2020-10385

2. There was a Local Privilege Escalation vulnerability found in the Debian version of Apache Tomcat, back in 2016. What's the CVE for this vulnerability?

R: CVE-2016-1240

3. What is the very first CVE found in the VLC media player?

R:CVE-2007-0017

4. If you wanted to exploit a 2020 buffer overflow in the sudo program, which CVE would you use?

R: CVE-2019-18634

## Manual Pages

- Another way to find that switch would have been to *search the man page for the correct switch using grep*:

![[asds.png]]

### Questions


1. SCP is a tool used to copy files from one computer to another.
What switch would you use to copy an entire directory?

R: -r

2. fdisk is a command used to view and alter the partitioning scheme used on your hard drive.
What switch would you use to list the current partitions?

R: -l

3. nano is an easy-to-use text editor for Linux. There are arguably better editors (Vim, being the obvious choice); however, nano is a great one to start with.
What switch would you use to make a backup when opening a file with nano?

R: -B

4. Netcat is a basic tool used to manually send and receive network requests. 
What command would you use to start netcat in listen mode, using port 12345?

R: nc -l -p 12345