---
user: bung3r
date: 19.12.25
description: Learn about A04, A05, and A08 as they related to insecure data handling.
tags:
  -
---

# [OWASP Top 10 2025 - Insecure Data Handling](https://tryhackme.com/room/owasptopten2025three)

## A04: Cryptographic Failures

### What are Cryptographic Failures?

Cryptographic failures happen when sensitive data isn't adequately protected due to lack of encryption, faulty implementation, or insufficient security measures. This includes storing passwords without hashing, using outdated or weak algorithms (such as MD5, SHA1, or DES), exposing encryption keys, or failing to secure data during transmission.

An incredible example of this is an application or service "rolling their own cryptography", rather than using well-established, vetted, and verifiably secure encryption algorithms.

### How to Prevent Cryptographic Failures

Preventing cryptographic failures starts with choosing strong, modern algorithms and implementing them properly. Sensitive information such as passwords should be hashed using robust, slow hashing functions like bcrypt, scrypt, or Argon2. When encrypting data, avoid creating your own algorithms; instead, rely on trusted, industry-standard libraries.

Never embed access credentials (i.e., to a third-party service) in source code, configuration files, or repositories. Instead, use secure key management systems or environments specifically designed for storing secrets.

### Questions

Q: Decrypt the encrypted notes. One of them will contain a flag value. What is it?

Key is `KEY1`.

A: `THM{WEAK_CRYPTO_FLAG}`

## A05: Injection

Injection occurs when an application takes user input and mishandles it. Instead of processing the input securely, the application passes it directly into a system that can execute commands or queries, such as a database, a shell, a templating engine or API.

You are likely familiar with SQL Injection, where an attacker inserts an SQL query into an application's logic, such as a login form, which then gets processed by the database. This happens when the web application fails to sanitise user input and instead uses it to construct the query. For instance, taking the "username" input on a login form and directly using it to query the database.

The following are some classic examples of injection that you may be familiar with:

- SQL Injection
- Command Injection
- AI Prompts
- Server Side Template Injection (SSTI)

Preventing injection starts by ensuring that user input is always treated as untrusted. Rather than parsing directly, instead, take elements of the input for querying. For SQL queries, this means using prepared statements and parameterised queries instead of building queries through string concatenation. For OS commands, avoid functions that pass input directly to the system shell, and instead rely on safe APIs and processes that don’t invoke the shell at all.

Input validation and sanitisation play a crucial role in preventing these types of attack. Escape dangerous characters, enforce strict data types and filter before the application even processes the input.

### Questions

Q: Perform an SSTI attack on the practical. You need to read the contents of flag.txt that is located within the same directory as the web application.

{% raw %}
{{ request.application.__globals__.__builtins__.open('flag.txt').read() }}
{% endraw %}

A: ` THM{SSTI_FLAG_OBTAINED} `

## A08: Software or Data Integrity Failures
][;d;'f,D"<o validate data that impacts application logic, or accepting data such as binaries, templates, or JSON files without confirming whether it has been altered.

## How to Avoid Software & Data Integrity Failures

Preventing these failures begins with establishing trust boundaries. Applications should never assume that code, updates, or key pieces of data are legitimate and automatically trusted; their integrity must be verified. This involves using methods such as cryptographic checks (like checksums) for update packages and ensuring that only trusted sources can modify critical artefacts.

Additionally, for applications, integrity and trust boundaries should also be within build processes such as CI/CD.

### Questions

Q: Use Python to pickle a malicious, serialised payload that reads the contents of flag.txt and submits it to the application.

 What are the contents of flag.txt?

A: ``

Q:

A: ``

Q:

A: ``

Q:

A: ``

Q:

A: ``

Q:

A: 

## Section 4

### Questions

Q:

A: ``

Q:

A: ``

Q:

A: ``

Q:

A: ``

Q:

A: ``

Q:

A: 

## Section 5

### Questions

Q:

A: ``

Q:

A: ``

Q:

A: ``

Q:

A: ``

Q:

A: ``

Q:

A: 

## Section 6

### Questions

Q:

A: ``

Q:

A: ``

Q:

A: ``

Q:

A: ``

Q:

A: ``

Q:

A: 