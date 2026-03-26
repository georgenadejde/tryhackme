---
user: bung3r
date: 15.01.22
description: Learn how DNS works and how it helps you access internet services.
tags:
  - dns
  - networking
---
# [DNS In Detail](https://tryhackme.com/room/dnsindetail)

## What is DNS?

Instead of remembering an IP address, DNS allows us to instead remember a name of the website (tryhackme.com)

## Domain Hierarchy
![[DomainHierarchy.png]]
### TLD (Top-Level Domains)

- It is basically the right hand side of a website's URL. For e.g., the TLD of tryhackme.com would be *.com*. 
- Two types of TLD: **gTLD** (Generic Top Level Domain) and **ccTLD** (Country Code Top Level Domain). Historically, the gTLD was used to tell the purpose of the domain name:

- .com -> commercial
- .gov -> gouvernment
- .edu -> education
- .org -> organisation

And ccTLD for geographical purposes:

- .ca -> sites based in Canada
- .co.uk -> based in the UK

[List](https://data.iana.org/TLD/tlds-alpha-by-domain.txt) of over 2000 TLDs: 

### Second-Level Domain

Given the domain tryhackme.com, the SLD would be *tryhackme* in this case. 

Some constraints regarding these:

- SLD is limited to 63 characters
- TLD can only use a-z 0-9 and hyphens (cannot start or end with hyphens or have consecutive hyphens)

### Subdomain

Sits on the left of a SLD. For ex, in admin.tryhackme.com, *admin* would be the subdomain. Has the same constraints with a SLD. You can have how many subdomains splits as you like, but it has to be kept to 253 characters or less. Also, there is no limit to the number of subdomains you can create.

## Record Types

- *A Record* - resolve IPv4 addresses

- *AAAA Record* - resolve IPv6 addresses

- *CNAME Record* - resolve to another domain name (ex: trayhackme's online shop has the subdomain name store.tryhackme.com which returns a CNAME record shops.shopify.com. Another DNS request is make to the latter to work out the IP address)

- *MX Record* - These records resolve to the address of the servers that handle the email for the domain you are querying, for example an MX record response for tryhackme.com would look something like *alt1.aspmx.l.google.com*. These records also come with a priority flag. This tells the client in which order to try the servers, this is perfect for if the main server goes down and email needs to be sent to a backup server.

-  What type of record would be used to advise where to send email? - MX Record

- *TXT Record* - free text fields where any text-based data can be stored. TXT records have multiple uses, but some common ones can be to list servers that have the authority to send an email on behalf of the domain (this can help in the battle against spam and spoofed email). They can also be used to verify ownership of the domain name when signing up for third party services.

## Making a request

![[MakingADNSRequest.png]]

1. Checks your **local cache** in case you recently looked up that IP. If not, a request to your *Recursive DNS Server* is made.

2. A *Recursive DNS Server* is usually provided by your ISP (but you can also choose your own). This server also has a local cache. If your IP is found, the request ends here (the case with heavily requested services such as Facebook, Google...). Otherwise, the request is forwarded to a **Root DNS Server**

3. The job of a Root DNS Server is to redirect you to the correct **Top Level Domain Server**. If you are requesting tryhackme.com, the root server will redirect the request to a TLD server that handles .com addresses.

4. The TLD server holds record for where to find the *Authoritative server* (also knows as the *nameserver* for the domain) to answer the DNS request. You will often find multiple namservers for a domain name to act as a backup in case one goes down.

5. An **authoritative DNS server** is the server that is responsible for storing the DNS records for a particular domain name and where any updates to your domain name DNS records would be made. Depending on the record type, the DNS record is then sent back to the Recursive DNS Server, where a local copy will be cached for future requests and then relayed back to the original client that made the request. DNS records all come with a **TTL** (Time To Live) value. This value is a number represented in seconds that the response should be saved for locally until you have to look it up again. Caching saves on having to make a DNS request every time you communicate with a server.

- What type of server holds all the records for a domain? - Authoritative Servers

## Practical

- What is the CNAME of shop.website.thm?

nslookup --type=CNAME shop.website.thm

=> shops.myshopify.com

- What is the value of the TXT record of website.thm?

nslookup --type=TXT website.thm

"THM{7012BBA60997F35A9516C2E16D2944FF}"

- What is the numerical priority value for the MX record?

nslookup --type=MX website.thm

website.thm mail exchanger = *30*

- What is the IP address for the A record of www.website.thm?

nslookup --type=A website.thm

10.10.10.10