---
title: "Intro To Security Operations"
user: h4ck47d4wn
date: 06.09.2024
description: Security operations
tags:
  - soc
---
# Security Operations

## Introduction to Security Operations

- A _Security Operations Center_ (SOC) is a _team_ of IT security professionals tasked with monitoring a company’s network and systems 24 hours a day, seven days a week. 
- Their purpose of monitoring is to:
	- **Find vulnerabilities on the network**: 
		- A _vulnerability_ is a weakness that an attacker can exploit to carry out things beyond their permission level. 
		- A vulnerability might be discovered in any device’s software (operating system and programs) on the network, such as a server or a computer. 
		- For instance, the SOC might discover a set of MS Windows computers that must be patched against a specific published vulnerability. 
		- Strictly speaking, vulnerabilities are not necessarily the SOC’s responsibility; however, unfixed vulnerabilities affect the security level of the entire company.
	- **Detect unauthorized activity**: 
		- Consider the case where an attacker discovered the username and password of one of the employees and used it to log in to the company system. 
		- It is crucial to detect this kind of unauthorized activity quickly before it causes any damage. 
		- Many clues can help us detect this, such as geographic location.
	- **Discover policy violations**: 
		- A _security policy_ is a set of rules and procedures created to help protect a company against security threats and ensure compliance. 
		- What is considered a violation would vary from one company to another; examples include downloading pirated media files and sending confidential company files insecurely.
	- **Detect intrusions**: 
		- _Intrusions_ refer to system and network intrusions. 
		- One example scenario would be an attacker successfully exploiting our web application. 
		- Another example scenario would be a user visiting a malicious site and getting their computer infected.
	- **Support with the incident response**: 
		- An _incident_ can be an observation, a policy violation, an intrusion attempt, or something more damaging such as a major breach. 
		- Responding correctly to a severe incident is not an easy task. 
		- The SOC can support the incident response team handle the situation.


### Questions

What does SOC stand for?

	`A: Security Operations Center`

How many hours a day does the SOC monitor the network?

	`A: 24`

## Elements of Security Operations

- The SOC uses many data sources to monitor the network for signs of intrusions and to detect any malicious behaviour. 
- Some of these sources are:
	- **Server logs**: 
		- There are many types of servers on a network, such as a mail server, web server, and domain controller on MS Windows networks. 
		- Logs contain information about various activities, such as successful and failed login attempts, among many others. 
		- There is a trove of information that can be found in the server logs.
	- **DNS activity**: 
		- DNS stands for Domain Name System, and it is the protocol responsible for converting a domain name, such as `tryhackme.com`, to an IP address, such as `10.3.13.37`, among other domain name related queries. 
		- One analogy of the DNS query is asking, “How can I reach TryHackMe?” and someone replying with the postal address. 
		- In practice, if someone tries to browse `tryhackme.com`, the DNS server has to resolve it and can log the DNS query to monitoring. 
		- The SOC can gather information about domain names that internal systems are trying to communicate with by merely inspecting DNS queries.
	- **Firewall logs**: 
		- A firewall is a device that controls network packets entering and leaving the network mainly by letting them through or blocking them. 
		- Consequently, firewall logs can reveal much information about what packets passed or tried to pass through the firewall.
	- **DHCP logs**: 
		- DHCP stands for Dynamic Host Configuration Protocol, and it is responsible for assigning an IP address to the systems that try to connect to a network. 
		- One analogy of the DHCP request would be when you enter a fancy restaurant, and the waiter welcomes you and guides you to an empty table. 
		- Know that DHCP has automatically provided your device with the network settings whenever you can join a network without manual configuration. 
		- By inspecting DHCP transactions, we can learn about the devices that joined the network.

-  SOC might use a Security Information and Event Management (SIEM) system. 
	- The SIEM aggregates the data from the different sources so that the SOC can efficiently correlate the data and respond to attacks.

- SOC services include reactive and proactive services in addition to other services.
	- Reactive services refer to the tasks initiated after detecting an intrusion or a malicious event. 
- Example reactive services include:
	- **Monitor security posture**: 
		- This is the primary role of the SOC, and it includes monitoring the network and computers for security alerts and notifications and responding to them as the need dictates.
	- **Vulnerability management**: 
		- This refers to finding vulnerabilities in the company systems and patching (fixing) them. The SOC can assist with this task but not necessarily execute it.
	- **Malware analysis**: 
		- The SOC might recover malicious programs that reached the network. The SOC can do basic analysis by executing it in a controlled environment. However, more advanced analysis requires sending it to a dedicated team.
	- **Intrusion detection**: 
		- An _intrusion detection system_ (IDS) is used to detect and log intrusions and suspicious packets. The SOC’s job is to maintain such a system, monitor its alerts, and go through its logs as the need dictates.
	- **Reporting**: 
		- It is essential to report incidents and alarms. Reporting is necessary to ensure a smooth workflow and to support compliance requirements.

- Proactive services refer to the tasks handled by the SOC without any indicator of an intrusion. 
- Example proactive services carried out by the SOC include:
	- **Network security monitoring (NSM)**: 
		- This focuses on monitoring the network data and analyzing the traffic to detect signs of intrusions.
	- **Threat hunting**: 
		- With _threat hunting_, the SOC assumes an intrusion has already taken place and begins its hunt to see if they can confirm this assumption.
	- **Threat Intelligence**: 
		- Threat intelligence focuses on learning about potential adversaries and their tactics and techniques to improve the company’s defences. 
		- The purpose would be to establish a _threat-informed defence_.

- Other services by the SOC include **cyber security training**. 
	- Many data breaches and intrusions can be avoided by raising users’ security awareness and arming them with solid security training.

### Questions

What does NSM stand for?
 
	`A: Network security monitoring`

## Practical Example of SOC

xWhat is the flag that you have received after successfully stopping the attack?

	`A: `