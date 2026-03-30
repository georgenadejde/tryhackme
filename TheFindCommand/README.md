---
title: "The Find Command"
user: bung3r
date: 27.01.22
description: A learn-by-doing approach to the find command
tags: 
  - linux
  - find
---

# [The find command](https://tryhackme.com/room/thefindcommand)

---

## Start finding

- The syntax can be broken down as such:

	- *find where what*

## Be more specific

- The first argument of the find command is a path of the directory to look for.

- the command will search in that directory and in all of its subdirectories.

- to search in the whole system: 

```bash
find /
```

- useful flags:

	- *-type* = *d* to only find directories and *f* to only find files.
	- *-name* = specify a name or a pattern to search for (*-iname* for case insensitive)

### Questions

1. Find all files whose name ends with ".xml".

R: find / -type f -name "*.xml"

2. Find all files in the /home directory (recursive) whose name is "user.txt" (case insensitive)

R: find /home -type f -iname "user.txt"

3. Find all directories whose name contains the word "exploits"

R: find / -type d -name "*exploits*" 

## Know exactly what you're searching for

- The user of the owner is specified by the flag: *-user*

- Size of the file: *-size* (-n/ +n/ n -> less than/ greater than/ exactly)
	- c: bytes
	- k: kilobytes
	- M: MB

- Specify a size less than 30 bytes:

```bash
find -size -30c
```

- Permissions: *-perm* (octal: *644* or symbolic form: *u=r*)
	- use *-* to return files with *at least* the specified permissions (the -444 mode will match files that are readable by everyone, even if someone also has write and/or execute permissions)
	- use */* to match *any* of the permissions specified (/666 mode will match files that are readable and writeable by at least one of the groups (owner, group, or others))

- **Time-related searches**: a word and a prefix

	- words: *min* (minutes) and *time* (days)
	- prefixes: *a* (accessed),*m*(modified) and *c* (changed)

- Numerical values have the same rules as with the size flag, *but* there is no suffix.

- Examples:
	- Files accessed more than 30 minutes ago: **-amin +30**
	- Files modified less than 7 days ago: **-mtime -7**
	- Files modified in the last 24 hours: **-mtime 0**

### Questions

1. Find all files owned by the user "kittycat"

R: find / -type f -user "kittycat"

2. Find all files that are exactly 150 bytes in size

R: find / -type f -size 150c

3. Find all files in the /home directory (recursive) with size less than 2 KiB’s and extension ".txt"

R: find /home -type f -size -2k -name "*.txt"

4. Find all files that are exactly readable and writeable by the owner, and readable by everyone else (use octal format)

R: find / -type f -perm 644

5. Find all files that are only readable by anyone (use octal format)

R: find / -type f -perm 444

6. Find all files with write permission for the group "others", regardless of any other permissions, with extension ".sh" (use symbolic format)

R: find / -type f -perm /o=w -name "*.sh"

7. Find all files in the /usr/bin directory (recursive) that are owned by root and have at least the SUID permission (use symbolic format)

R: find /usr/bin -type f -user root -perm /u=s

8. Find all files that were not accessed in the last 10 days with extension ".png"

R: find / -type f -atime -10 -name "*.png"

9. Find all files in the /usr/bin directory (recursive) that have been modified within the last 2 hours

R: find /usr/bin -type f -mmin -120

## Useful notes

- you can use the redirection operator > with the find command. 

- You can save the results of the search to a file, and more importantly, you can suppress the output of any possible errors to make the output more readable.

- This is done by appending **2> /dev/null** to your command. 

- This way, you won’t see any results you’re not allowed to access.

- The second thing is the **-exec** flag. 

- You can use it in your find command to execute a new command, following the -exec flag, like so: **-exec whoami \;**. 

- The possibilities enabled by this option are beyond the scope of this tutorial, but most notably it can be used for **privilege escalation**.