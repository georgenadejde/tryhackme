---
user: h4ck47d4wn
date: 06.09.2024
tags:
  - crypto
---
# Introduction To Cryptography

## Introduction

### Caesar Cipher

- Caesar Cipher shifts the letter by a fixed number of places to the left or to the right. 
- The Caesar Cipher that we have described above can use a key between 1 and 25. 
	- With a key of 1, each letter is shifted by one position, where A becomes B, and Z becomes A. 
	- With a key of 25, each letter is shifted by 25 positions, where A becomes Z, and B becomes A. 
	- A key of 0 means no change; moreover, a key of 26 will also lead to no change as it would lead to a full rotation. 
	- Consequently, we conclude that Caesar Cipher has a **keyspace** of 25; there are 25 different keys that the user can choose from.

- Caesar cipher is considered a **substitution cipher** because each letter in the alphabet is substituted with another.
- Another type of cipher is called **transposition cipher**, which encrypts the message by changing the order of the letters.


- We don’t really need to use the encryption key to decrypt the received ciphertext, “Uyv sxd gyi siqvw x sinduxjd pvzjdw po axffojdz xgxo wsxcc wuidvw.” 
- As shown in the figure below, using a website such as [quipqiup](https://www.quipqiup.com/), it will take a moment to discover that the original text was “The man who moves a mountain begins by carrying away small stones.”

#### Questions

You have received the following encrypted message:

_“Xjnvw lc sluxjmw jsqm wjpmcqbg jg wqcxqmnvw; xjzjmmjd lc wjpm sluxjmw jsqm bqccqm zqy.” Zlwvzjxj Zpcvcol_

You can guess that it is a quote. Who said it?

- Paste the quote on [quipqiup](https://www.quipqiup.com/)

![](Pasted%20image%2020240906150440.png)


	`A: Miyamoto Musashi`

## Symmetric Encryption

### Terminology

- **Cryptographic Algorithm** or **Cipher** = algorithm that defines the encryption and decryption processes.

- **Key** = the cryptographic algorithm needs a key to convert the plaintext into ciphertext and vice versa.

- **plaintext** = original message that we want to encrypt

- **ciphertext** = message in its encrypted form

### Symmetric encryption

- A symmetric encryption algorithm uses the same key for encryption and decryption. 
- Consequently, the communicating parties need to agree on a secret key before being able to exchange any messages.

### DES

- National Institute of Standard and Technology (NIST) published the **Data Encryption Standard (DES)** in 1977. 
	- DES is a symmetric encryption algorithm that uses a key size of 56 bits. 
- In 1997, a challenge to break a message encrypted using DES was solved. 
	- Consequently, it was demonstrated that it had become feasible to use a brute-force search to find the key and break a message encrypted using DES. 
- In 1998, a DES key was broken in 56 hours. 
- These cases indicated that DES could no longer be considered secure.

### AES

- NIST published the **Advanced Encryption Standard (AES)** in 2001. 
	- Like DES, it is a symmetric encryption algorithm; however, it uses a key size of 128, 192, or 256 bits, and it is still considered secure and in use today. 
	
- AES repeats the following four transformations multiple times:
	1. `SubBytes(state)`: This transformation looks up each byte in a given substitution table (S-box) and substitutes it with the respective value. The `state` is 16 bytes, i.e., 128 bits, saved in a 4 by 4 array.
	2. `ShiftRows(state)`: The second row is shifted by one place, the third row is shifted by two places, and the fourth row is shifted by three places. This is shown in the figure below.
	3. `MixColumns(state)`: Each column is multiplied by a fixed matrix (4 by 4 array).
	4. `AddRoundKey(state)`: A round key is added to the state using the XOR operation.

![Illustration of the ShiftRows function when applied on a four by four array](https://tryhackme-images.s3.amazonaws.com/user-uploads/5f04259cf9bf5b57aed2c476/room-content/049bad7deb4e6dd426335d7c3477f10a.png)

- The total number of transformation rounds depends on the key size.

### Block ciphers

- A **block cipher algorithm** converts the input (plaintext) into blocks and encrypts each block.
- A block is usually 128 bits.
- A block of 128 bits is practically 16 bytes and is represented in a 4 by 4 array. 
	- The 128-bit block is fed as one unit to the encryption method.
- The other type of symmetric encryption algorithm is stream ciphers, which encrypt the plaintext byte by byte.

- **Confidentiality**: 
	- If Eve intercepted the encrypted message, she wouldn’t be able to recover the plaintext. 
	- Consequently, all messages exchanged between Alice and Bob are confidential as long as they are sent encrypted.
- **Integrity**: 
	- When Bob receives an encrypted message and decrypts it successfully using the key he agreed upon with Alice, Bob can be sure that no one could tamper with the message across the channel. 
	- When using secure modern encryption algorithms, any minor modification to the ciphertext would prevent successful decryption or would lead to gibberish as plaintext.
- **Authenticity**: 
	- Being able to decrypt the ciphertext using the secret key also proves the authenticity of the message because only Alice and Bob know the secret key.

- With Alice and Bob, we needed one key. If we have Alice, Bob, and Charlie, we need three keys: one for Alice and Bob, another for Alice and Charlie, and a third for Bob and Charlie. 
	- However, the number of keys grows quickly; communication between 100 users requires almost 5000 different secret keys. (If you are curious about the mathematics behind it, that’s 99 + 98 + 97 + … + 1 = 4950).

- There are many programs available for symmetric encryption. 
- We will focus on two, which are widely used for asymmetric encryption as well:
	- **GNU Privacy Guard**
	- **OpenSSL Project**


### GNU Privacy Guard

- The [GNU Privacy Guard](https://gnupg.org/), also known as GnuPG or GPG, implements the OpenPGP standard.

- We can encrypt a file using GnuPG (GPG) using the following command: `gpg --symmetric --cipher-algo CIPHER message.txt`, where CIPHER is the name of the encryption algorithm. 
- You can check supported ciphers using the command `gpg --version`. 
	- The encrypted file will be saved as `message.txt.gpg`.

- The default output is in the binary OpenPGP format; however, if you prefer to create an ASCII armoured output, which can be opened in any text editor, you should add the option `--armor`. 
	- For example, `gpg --armor --symmetric --cipher-algo CIPHER message.txt`.

- You can decrypt using the following command: `gpg --output original_message.txt --decrypt message.gpg`

### OpenSSL Project

- The [OpenSSL Project](https://www.openssl.org/) maintains the OpenSSL software.

- We can encrypt a file using OpenSSL using the following command:

`openssl aes-256-cbc -e -in message.txt -out encrypted_message`

- We can decrypt the resulting file using the following command:

`openssl aes-256-cbc -d -in encrypted_message -out original_message.txt`

- To make the encryption more secure and resilient against brute-force attacks, we can add `-pbkdf2` to use the Password-Based Key Derivation Function 2 (PBKDF2); moreover, we can specify the number of iterations on the password to derive the encryption key using `-iter NUMBER`. To iterate 10,000 times, the previous command would become:

`openssl aes-256-cbc -pbkdf2 -iter 10000 -e -in message.txt -out encrypted_message`

- Consequently, the decryption command becomes:

`openssl aes-256-cbc -pbkdf2 -iter 10000 -d -in encrypted_message -out original_message.txt`


### Questions

- Decrypt the file `quote01` encrypted (using AES256) with the key `s!kR3T55` using `gpg`. What is the third word in the file?

![](Pasted%20image%2020240906154749.png)

	`A: waste`

- Decrypt the file `quote02` encrypted (using AES256-CBC) with the key `s!kR3T55` using `openssl`. What is the third word in the file?

![](Pasted%20image%2020240906155024.png)

	`A: science`

Decrypt the file `quote03` encrypted (using CAMELLIA256) with the key `s!kR3T55` using `gpg`. What is the third word in the file?

![](Pasted%20image%2020240906155217.png)

	`A: understand`


## Asymmetric Encryption'

- Symmetric encryption requires the users to find a secure channel to exchange keys. 
	- By secure channel, we are mainly concerned with confidentiality and integrity. 
- In other words, we need a channel where no third party can eavesdrop and read the traffic; moreover, no one can change the sent messages and data.

- Asymmetric encryption makes it possible to exchange encrypted messages without a secure channel; we just need a reliable channel. 
- By reliable channel, we mean that we are mainly concerned with the channel’s integrity and not confidentiality.
- When using an asymmetric encryption algorithm, we would generate a key pair: a public key and a private key. 
	- The public key is shared with the world, or more specifically, with the people who want to communicate with us securely. 
	- The private key must be saved securely, and we must never let anyone access it.


### RSA

- RSA got its name from its inventors, Rivest, Shamir, and Adleman. It works as follows:

![](Pasted%20image%2020240906160946.png)

- RSA security relies on factorization being a hard problem. 
	- It is easy to multiply _p_ by _q_; however, it is time-consuming to find _p_ and _q_ given _N_. 
	- Moreover, for this to be secure, _p_ and _q_ should be pretty large numbers, for example, each being 1024 bits (that’s a number with more than 300 digits). 
- It is important to note that RSA relies on secure random number generation, as with other asymmetric encryption algorithms. 
	- If an adversary can guess _p_ and _q_, the whole system would be considered insecure.

![](Pasted%20image%2020240906161214.png)

- Generate RSA key pair:
	- `openssl genrsa -out private-key.pem 2048`: With `openssl`, we used `genrsa` to generate an RSA private key. Using `-out`, we specified that the resulting private key is saved as `private-key.pem`. We added `2048` to specify a key size of 2048 bits.
	- `openssl rsa -in private-key.pem -pubout -out public-key.pem`: Using `openssl`, we specified that we are using the RSA algorithm with the `rsa` option. We specified that we wanted to get the public key using `-pubout`. Finally, we set the private key as input using `-in private-key.pem` and saved the output using `-out public-key.pem`.
	- `openssl rsa -in private-key.pem -text -noout`: We are curious to see real RSA variables, so we used `-text -noout`. The values of _p_, _q_, _N_, _e_, and _d_ are `prime1`, `prime2`, `modulus`, `publicExponent`, and `privateExponent`, respectively.


- If we already have the recipient’s public key, we can encrypt it with the command `openssl pkeyutl -encrypt -in plaintext.txt -out ciphertext -inkey public-key.pem -pubin`

- The recipient can decrypt it using the command `openssl pkeyutl -decrypt -in ciphertext -inkey private-key.pem -out decrypted.txt`

### Questions

Bob has received the file `ciphertext_message` sent to him from Alice. You can find the key you need in the same folder. What is the first word of the original plaintext?

![](Pasted%20image%2020240906162000.png)

	`A: Perception`

Take a look at Bob’s private RSA key. What is the last byte of _p_?

- `openssl rsa -in private-key-bob.pem -text -noout`
-  *p* is named *prime1*

	`A: e7`

Take a look at Bob’s private RSA key. What is the last byte of _q_?

- `openssl rsa -in private-key-bob.pem -text -noout`
-  *q* is named *prime2*

	`A: 27`

## Diffie-Hellman Key Exchange

- Alice and Bob can communicate over an insecure channel. 
	- By insecure, we mean that there are eavesdroppers who can read the messages exchanged on this channel. 
- How can Alice and Bob agree on a secret key in such a setting? 
	- One way would be to use the Diffie-Hellman key exchange, which allows the exchange of a secret over a public channel.

![](Pasted%20image%2020240909163855.png)

![](Pasted%20image%2020240909164104.png)


- We can use `openssl` to generate Diffie-Hellman parameters; we need to specify the option `dhparam` to indicate that we want to generate Diffie-Hellman parameters along with the specified size in bits, such as `2048` or `4096`.
	- `openssl dhparam -out dhparams.pem 2048`
	- `openssl dhparam -in dhparams.pem -text -noout`

### Questions

A set of Diffie-Hellman parameters can be found in the file `dhparam.pem`. What is the size of the prime number in bits?

- Use command `openssl dhparam -in dhparams.pem -text -noout`

	`A: 4096`

What is the prime number’s last byte (least significant byte)?

	`A: 4f`


## Hashing

- A cryptographic hash function is an algorithm that takes data of arbitrary size as its input and returns a fixed size value, called _message digest_ or _checksum_, as its output. 
	- For example, `sha256sum` calculates the SHA256 (Secure Hash Algorithm 256) message digest. 
- **SHA256**, as the name indicates, returns a checksum of size 256 bits (32 bytes). 
	- This checksum is usually written using hexadecimal digits. 
	- Knowing that a hexadecimal digit represents 4 bits, the 256 bits checksum can be represented as 64 hexadecimal digits.

- But why would we need such a function? 
	- Storing passwords: Instead of storing passwords in plaintext, a hash of the password is stored instead. 
		- Consequently, if a data breach occurs, the attacker will get a list of password hashes instead of the original passwords. (In practice, passwords are also “salted”, as discussed in a later task.)
	- Detecting modifications: Any minor modification to the original file would lead to a drastic change in hash value, i.e. checksum.

- Some of the hashing algorithms in use and still considered secure are:
	- SHA224, SHA256, SHA384, SHA512
	- RIPEMD160

### HMAC

- Hash-based message authentication code (HMAC) is a message authentication code (MAC) that uses a cryptographic key in addition to a hash function.

- According to [RFC2104](https://www.rfc-editor.org/rfc/rfc2104), HMAC needs:
	- secret key
	- inner pad (ipad) a constant string. (RFC2104 uses the byte `0x36` repeated B times. The value of B depends on the chosen hash function.)
	- outer pad (opad) a constant string. (RFC2104 uses the byte `0x5C` repeated B times.)

![](Pasted%20image%2020240909170906.png)

- To calculate the HMAC on a Linux system, you can use any of the available tools such as `hmac256` (or `sha224hmac`, `sha256hmac`, `sha384hmac`, and `sha512hmac`, where the secret key is added after the option `--key`)




### Questions

What is the SHA256 checksum of the file `order.json`?

- `sha256sum order.json`

	`A: 2c34b68669427d15f76a1c06ab941e3e6038dacdfb9209455c87519a3ef2c660`

Open the file `order.json` and change the amount from `1000` to `9000`. What is the new SHA256 checksum?  

	`A: 11faeec5edc2a2bad82ab116bbe4df0f4bc6edd96adac7150bb4e6364a238466`

Using SHA256 and the key `3RfDFz82`, what is the HMAC of `order.txt`?

- `hmac256 3RfDFz82 order.txt`

	`A: c7e4de386a09ef970300243a70a444ee2a4ca62413aeaeb7097d43d2c5fac89f`

## PKI and SSL/TLS 

- the key exchange we described earlier (i.e. Diffie-Hellman) is not immune to Man-in-the-Middle (MITM) attack. 
	- The reason is that Alice has no way of ensuring that she is communicating with Bob, and Bob has no way of ensuring that he is communicating with Alice when exchanging the secret key.

![](Pasted%20image%2020240910133043.png)

- This susceptibility necessitates some mechanism that would allow us to confirm the other party’s identity. 
	- This brings us to **Public Key Infrastructure (PKI)**.

- Consider the case where you are browsing the website [example.org](https://example.org/) over HTTPS. 
	- How can you be confident that you are indeed communicating with the `example.org` server(s)? 
- In other words, how can you be sure that no man-in-the-middle intercepted the packets and altered them before they reached you? 
	- The answer lies in the **website certificate**.

- For a certificate to get signed by a certificate authority, we need to:

1. Generate **Certificate Signing Request (CSR)**: You create a certificate and send your public key to be signed by a third party.
2. Send your CSR to a **Certificate Authority (CA)**: The purpose is for the CA to sign your certificate. 
	- The alternative and usually insecure solution would be to self-sign your certificate.

- For this to work, the recipient should recognize and trust the CA that signed the certificate. 
	- And as we would expect, our browser trusts DigiCert Inc as a signing authority; otherwise, it would have issued a security warning instead of proceeding to the requested website.


- You can use `openssl` to generate a certificate signing request using the command `openssl req -new -nodes -newkey rsa:4096 -keyout key.pem -out cert.csr`. 
-  Options:
	- `req -new` create a new certificate signing request
	- `-nodes` save private key without a passphrase
	- `-newkey` generate a new private key
	- `rsa:4096` generate an RSA key of size 4096 bits
	- `-keyout` specify where to save the key
	- `-out` save the certificate signing request

- Once the CSR file is ready, you can send it to a CA of your choice to get it signed and ready to use on your server.

- Once the client, i.e., the browser, receives a signed certificate it trusts, the SSL/TLS handshake takes place. 
	- The purpose would be to agree on the ciphers and the secret key.

-  the following command will generate a self-signed certificate.

`openssl req -x509 -newkey -nodes rsa:4096 -keyout key.pem -out cert.pem -sha256 -days 365`

- Options:
	- The `-x509` indicates that we want to generate a self-signed certificate instead of a certificate request. 
	- The `-sha256` specifies the use of the SHA-256 digest. 
	- It will be valid for one year as we added `-days 365`.

### Questions

- `openssl x509 -in cert.pem -text`

What is the size of the public key in bits?

	`A: 4096`

Till which year is this certificate valid?

	`A: 2039`

## Authenticating with Passwords

- With PKI and SSL/TLS, we can communicate with any server and provide our login credentials while ensuring that no one can read our passwords as they move across the network. 
	- This is an example of protecting data in transit. 

- Let’s explore how we can safeguard passwords as they are saved in a database, i.e., data at rest.

- The least secure method would be to save the username and the password in a database. 
	- This way, any data breach would expose the users’ passwords. 
	- No effort is required beyond reading the database containing the passwords.

- The improved approach would be to save the username and a hashed version of the password in a database. 
	- This way, a data breach will expose the hashed versions of the passwords. 
	- Since a hash function is irreversible, the attacker needs to keep trying different passwords to find the one that would result in the same hash.

- The previous approach looks secure; however, the availability of rainbow tables has made this approach insecure. 
	- A **rainbow table** contains a list of passwords along with their hash value. 
	- Hence, the attacker only needs to look up the hash to recover the password. 
		- For example, it would be easy to look up `d8578edf8458ce06fbc5bb76a58c5ca4` to discover the original password of `alice`. 
- Consequently, we need to find more secure approaches to save passwords securely; we can add salt. 
	- A **salt** is a random value we can append to the password before hashing it. 

- Another improvement we can make before saving the password is to use a key derivation function such as **PBKDF2 (Password-Based Key Derivation Function 2).**
	- PBKDF2 takes the password and the salt and submits it through a certain number of iterations, usually hundreds of thousands.

- Check the [Password Storage Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Password_Storage_Cheat_Sheet.html) to learn about other techniques related to password storage.

### Questions

- You were auditing a system when you discovered that the MD5 hash of the admin password is `3fc0a7acf087f549ac2b266baf94b8b1`. 
	- What is the original password?

	`A: qwerty123`

## Cryptography and Data - Example

- how symmetric and asymmetric encryption are used along with hashing in many secure communications?

- We would like to explore what happens when we log into a website over HTTPS.
	1. Client requests server’s SSL/TLS certificate
	2. Server sends SSL/TLS certificate to the client
	3. Client confirms that the certificate is valid

- Cryptography’s role starts with checking the certificate. 
	- For a certificate to be considered valid, it means it is **signed**. 
		- Signing means that a hash of the certificate is encrypted with the private key of a trusted third party; the encrypted hash is appended to the certificate.


- If the third party is trusted, the client will use the third party’s public key to decrypt the encrypted hash and compare it with the certificate’s hash. 
	- However, if the third party is not recognized, the connection will not proceed automatically.

- Once the client confirms that the certificate is valid, an SSL/TLS handshake is started. 
	- This handshake allows the client and the server to agree on the secret key and the symmetric encryption algorithm, among other things. 
	- From this point onward, all the related session communication will be encrypted using symmetric encryption.

- The final step would be to provide login credentials. 
	- The client uses the encrypted SSL/TLS session to send them to the server. 
	- The server receives the username and password and needs to confirm that they match.

- Following security guidelines, we expect the server to save a hashed version of the password after appending a random salt to it. 
- This way, if the database were breached, the passwords would be challenging to recover.