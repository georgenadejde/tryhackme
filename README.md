# TryHackMe Writeups

Room walkthroughs and notes from my time on [TryHackMe](https://tryhackme.com/p/bung3r), covering penetration testing, forensics, reverse engineering, networking, malware analysis and more.

Each folder contains a `README.md` with my methodology, commands used, and key takeaways. The full writeup site is hosted at **[georgenadejde.github.io/tryhackme](https://georgenadejde.github.io/tryhackme)**.

---

## Rooms

### 🌐 Networking & Protocols
| Room | Topics |
|------|--------|
| [WhatIsNetworking](./WhatIsNetworking) | OSI model, IP, MAC |
| [IntroToLAN](./IntroToLAN) | LAN topologies, ARP, DHCP |
| [OSIModel](./OSIModel) | 7-layer model deep dive |
| [Packets And Frames](./Packets%20And%20Frames) | TCP/UDP, packet structure |
| [Extending Your Network](./Extending%20Your%20Network) | VLANs, subnetting, VPNs |
| [Networking](./Networking) | Core networking concepts |
| [Networking Concepts](./Networking%20Concepts) | Protocols overview |
| [Networking Core Protocols](./Networking%20Core%20Protocols) | DNS, HTTP, FTP, SMTP |
| [Networking Essentials](./Networking%20Essentials) | Practical fundamentals |
| [Networking Secure Protocols](./Networking%20Secure%20Protocols) | TLS, SSH, HTTPS |
| [DNSInDetail](./DNSInDetail) | DNS resolution, record types |
| [HTTPInDetail](./HTTPInDetail) | HTTP methods, status codes, headers |
| [IntroductoryNetworking](./IntroductoryNetworking) | TCP/IP stack |

### ⚔️ Offensive Security & Pentesting
| Room | Topics |
|------|--------|
| [IntroToOffensiveSecurity](./IntroToOffensiveSecurity) | Offensive mindset, recon basics |
| [HackerMethodology](./HackerMethodology) | Phases of a pentest |
| [PentestingFundamentals](./PentestingFundamentals) | Scoping, methodology, reporting |
| [PassiveRecon](./PassiveRecon) | OSINT, WHOIS, DNS enumeration |
| [ActiveRecon](./ActiveRecon) | Nmap, ping sweeps, traceroute |
| [ContentDiscovery](./ContentDiscovery) | Gobuster, ffuf, directory bruting |
| [Nmap](./Nmap) | Port scanning, service detection, NSE scripts |
| [Nmap - The Basics](./Nmap%20-%20The%20Basics) | Nmap fundamentals |
| [Exploitation Basics](./Exploitation%20Basics) | Vulnerability exploitation intro |
| [Offensive Security Tooling](./Offensive%20Security%20Tooling) | Tool overview: Metasploit, Burp, etc. |
| [Vulnversity](./Vulnversity) | Recon → exploitation → privesc |
| [NetworkSecurity](./NetworkSecurity) | Network-level attacks and defenses |
| [Network Services](./Network%20Services) | SMB, FTP, Telnet, NFS, SMTP enumeration |

### 🕸️ Web Application Security
| Room | Topics |
|------|--------|
| [WebFundamentals](./WebFundamentals) | HTML, JS, HTTP basics |
| [How Websites Work](./How%20Websites%20Work) | Client/server model, HTML, JS injection |
| [WalkingAnApplication](./WalkingAnApplication) | Manual browsing, source review |
| [Putting It All Together](./Putting%20It%20All%20Together) | Full web request lifecycle |
| [Intro to Web Hacking](./Intro%20to%20Web%20Hacking) | IDOR, file inclusion, SSRF |
| [Web Hacking](./Web%20Hacking) | Web attack techniques |
| [OWASPTop10](./OWASPTop10) | Classic OWASP Top 10 |
| [OWASP Top 10 - 2021](./OWASP%20Top%2010%20-%202021) | Updated OWASP Top 10 |
| [OWASP Top 10 (2025)](./OWASP%20Top%2010%20(2025)) | Latest OWASP Top 10 |
| [OWASPJuiceShop](./OWASPJuiceShop) | Hands-on vulnerable app |
| [BurpSuite](./BurpSuite) | Proxy, Repeater, Intruder, Scanner |
| [GoogleDorking](./GoogleDorking) | Advanced search operators for recon |
| [SearchSkills](./SearchSkills) | OSINT, dorking, investigative research |

### 🔐 Cryptography
| Room | Topics |
|------|--------|
| [Introduction To Cryptography](./Introduction%20To%20Cryptography) | Symmetric/asymmetric, hashing |
| [Cryptography](./Cryptography) | AES, RSA, key exchange |

### 🧬 Digital Forensics & Incident Response
| Room | Topics |
|------|--------|
| [Digital Forensics Fundamentals](./Digital%20Forensics%20Fundamentals) | Evidence handling, disk forensics |
| [Incident Response Fundamentals](./Incident%20Response%20Fundamentals) | IR lifecycle, containment, eradication |
| [Logs Fundamentals](./Logs%20Fundamentals) | Log analysis, SIEM basics |
| [Wireshark - The Basics](./Wireshark%20-%20The%20Basics) | PCAP analysis, filter syntax |
| [Tcpdump - The Basics](./Tcpdump%20-%20The%20Basics) | CLI packet capture and analysis |
| [SOC Fundamentals](./SOC%20Fundamentals) | SOC roles, triage, alert handling |
| [CyberChef\_TheBasics](./CyberChef_TheBasics) | Encoding, decoding, data transforms |

### 🦠 Malware Analysis & Reverse Engineering
| Room | Topics |
|------|--------|
| [MalwareIntroductory](./MalwareIntroductory) | Malware types, static/dynamic analysis |
| [HistoryOfMalware](./HistoryOfMalware) | Evolution of malware |
| [Yara](./Yara) | Writing and using Yara detection rules |
| [CAPA - The Basics](./CAPA%20-%20The%20Basics) | Automated capability detection |
| [FlareVM -Arsenal of Tools](./FlareVM%20-Arsenal%20of%20Tools) | RE tooling on Windows |
| [REMnux - Getting Started](./REMnux%20-%20Getting%20Started) | Linux malware analysis environment |
| [IntroTox86-64](./IntroTox86-64) | x86-64 assembly fundamentals |

### 🖥️ Linux & Windows
| Room | Topics |
|------|--------|
| [LinuxFundamentalsPart1](./LinuxFundamentalsPart1) | Filesystem, basic commands |
| [LinuxFundamentalsPart2](./LinuxFundamentalsPart2) | Permissions, processes |
| [LinuxFundamentalsPart3](./LinuxFundamentalsPart3) | Automation, cron, services |
| [LinuxShell](./LinuxShell) | Shell usage and scripting |
| [LinuxStrengthTraining](./LinuxStrengthTraining) | Advanced CLI challenges |
| [TheFindCommand](./TheFindCommand) | `find` for forensics and recon |
| [Bashscripting](./Bashscripting) | Automation with Bash |
| [REmux The Tmux](./REmux%20The%20Tmux) | Tmux for terminal efficiency |
| [WindowsFundamentals1](./WindowsFundamentals1) | Windows filesystem, registry |
| [WindowsFundamentals2](./WindowsFundamentals2) | Users, groups, permissions |
| [WindowsFundamentals3](./WindowsFundamentals3) | Security tools, updates, UAC |
| [WindowsCommandLine](./WindowsCommandLine) | cmd.exe for investigation |
| [WindowsPowershell](./WindowsPowershell) | PowerShell for security tasks |
| [ActiveDirectoryBasics](./ActiveDirectoryBasics) | AD structure, objects, authentication |

### 🎄 Advent of Cyber
| Room | Topics |
|------|--------|
| [AdventCalendar2019](./AdventCalendar2019) | 25 days — web, scripting, forensics, networking, privesc |
| [AdventCalendar2020](./AdventCalendar2020) | 25 days — OSINT, RE, cloud, forensics |
| [AdventCalendar2021](./AdventCalendar2021) | 25 days — IDOR, log analysis, malware, network |
| [AdventCalendar2022](./AdventCalendar2022) | 25 days — smart contracts, malware, forensics, DevSecOps |

### 📚 Concepts & Fundamentals
| Room | Topics |
|------|--------|
| [PrinciplesOfSecurity](./PrinciplesOfSecurity) | CIA triad, threat modelling |
| [Security Principles](./Security%20Principles) | Defence in depth, zero trust |
| [Security Solutions](./Security%20Solutions) | Firewalls, IDS/IPS, SIEM |
| [CommonAttacks](./CommonAttacks) | Phishing, MITM, SQLi overview |
| [IntroToDefensiveSecurity](./IntroToDefensiveSecurity) | Blue team fundamentals |
| [IntroToResearch](./IntroToResearch) | Using CVEs, documentation, forums |
| [CarrersInCyber](./CarrersInCyber) | Security career paths |
| [Training Impact on Teams](./Training%20Impact%20on%20Teams) | Security awareness |
| [PythonBasics](./PythonBasics) | Python for scripting and automation |

---

More security stuff on my website [here](https://georgenadejde.github.io).
