---
user: bung3r
date: 31.12.2022
description: Intro To Offensive Security
tags:
---

# [Intro To Offensive Security](https://tryhackme.com/room/introtooffensivesecurity)

#offensivesecurity

- Offensive security is the process of breaking into computer systems, exploiting software bugs, and finding loopholes in applications to gain unauthorized access to them.

- To beat a hacker, you need to behave like a hacker, finding vulnerabilities and recommending patches before a cybercriminal does.
- On the flip side, there is also defensive security, which is the process of protecting an organization's network and computer systems by analyzing and securing any potential digital threats; 
	- In a defensive cyber role, you could be investigating infected computers or devices to understand how it was hacked, tracking down cybercriminals, or monitoring infrastructure for malicious activity.

### How can I start learning?

- People often wonder how others become hackers (security consultants) or defenders (security analysts fighting cybercrime), and the answer is simple. 
	- Break it down, learn an area of cyber security you're interested in, and regularly practice using hands-on exercises. 
	- Build a habit of **learning a little bit each day** on TryHackMe, and you'll acquire the knowledge to get your first job in the industry.

- Trust us; you can do it! Just take a look at some people who have used TryHackMe to get their first security job:
	-   Paul went from a construction worker to a security engineer. [Read more](https://tryhackme.com/resources/blog/construction-worker-to-security-engineer-how-paul-used-tryhackme-to-land-his-first-job-in-security).      
	-   Kassandra went from a music teacher to a security professional. [Read more](https://tryhackme.com/resources/blog/the-teacher-becomes-the-student).
	-   Brandon used TryHackMe while at school to get his first job in cyber. [Read more](https://tryhackme.com/resources/blog/brandons-success-story).

### What careers are there?

- Here is a short description of a few offensive security roles:
	-   **Penetration Tester** - Responsible for testing technology products for finding exploitable security vulnerabilities.
	-   **Red Teamer** - Plays the role of an adversary, attacking an organization and providing feedback from an enemy's perspective.
	-   **Security Engineer** - Design, monitor, and maintain security controls, networks, and systems to help prevent cyberattacks.

### Questions

When you've transferred money to your account, go back to your bank account page. What is the answer shown on your bank balance page?

- Used `gobuster` on the given website to find the hidden pages:

![](../../../Attachments/Pasted%20image%2020221231231651.png)

- We found two directories: `/images` and `/bank-transfer`. 
	- The latter seems more interesting
- Let's access that hidden directory using a browser:

![](../../../Attachments/Pasted%20image%2020221231232059.png)

- We send 2000 USD dollars from the account 2276 to ours, 8881:

![](../../../Attachments/Pasted%20image%2020221231232307.png)

- Going back to our account page, we can see the transfer from the bank stuff and the flag:

![](../../../Attachments/Pasted%20image%2020221231232446.png)

A: BANK-HACKED