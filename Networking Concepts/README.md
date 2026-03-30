---
title: "Networking Concepts"
user: bung3r
date: 11.12.25
description: Learn about the ISO OSI model and the TCP/IP protocol suite.
tags:
  - networking
  - tcp
  - udp
  - osi
  - telnet
---

# [Networking Concepts](https://tryhackme.com/room/networkingconcepts)

## OSI Model

The OSI (Open Systems Interconnection) model is a conceptual model developed by the International Organization for Standardization (ISO) that describes how communications should occur in a computer network. In other words, the OSI model defines a framework for computer network communications. Although this model is theoretical, it is vital to learn and understand as it helps grasp networking concepts on a deeper level. The OSI model is composed of seven layers:

1. Physical Layer
2. Data Link Layer
3. Network Layer
4. Transport Layer
5. Session Layer
6. Presentation Layer
7. Application Layer

To help you remember the layers from bottom to top, you can use a mnemonic such as “Please Do Not Throw Spinach Pizza Away.” You can check the Internet for other easy-to-remember acronyms if this helps you memorise them. Remembering the OSI model layers with their layer numbers is important; otherwise, you will struggle to understand terms such as “layer 3 switch” or “layer 7 firewall.”

### Layer 1: Physical Layer

The physical layer, also referred to as layer 1, deals with the physical connection between devices; this includes the medium, such as a wire, and the definition of the binary digits 0 and 1. Data transmission can be via an electrical, optical, or wireless signal. Consequently, we need data cables or antennas, depending on our physical medium.

In addition to Ethernet cable and optical fibre cable, examples of the physical layer medium include the WiFi radio bands, the 2.4 GHz band, the 5 GHz band, and the 6 GHz band.

### Layer 2: Data Link Layer

The physical layer defines a medium to transmit our signal. The data link layer, i.e., layer 2, represents the protocol that enables data transfer between nodes on the same network segment. Let’s put it in simpler terms. The data link layer describes an agreement between the different systems on the same network segment on how to communicate. A network segment refers to a group of networked devices using a shared medium or channel for information transfer. For example, consider a company office with ten computers connected to a network switch; that’s a network segment.

Examples of layer 2 include Ethernet, i.e., 802.3, and WiFi, i.e., 802.11. Ethernet and WiFi addresses are six bytes. Their address is called a MAC address, where MAC stands for Media Access Control. They are usually expressed in hexadecimal format with a colon separating each two hexadecimal digits (one byte). The three leftmost bytes identify the vendor.

### Layer 3: Network Layer

The data link layer focuses on sending data between two nodes on the same network segment. The network layer, i.e., layer 3, is concerned with sending data between different networks. In more technical terms, the network layer handles logical addressing and routing, i.e., finding a path to transfer the network packets between the diverse networks.

In the data link layer, we gave an example of one company office with ten computers, where the data link layer is responsible for providing a connection between them. Let’s say that this company has multiple offices distributed across various cities, countries, or even continents. The network layer is responsible for connecting the different offices together.

Examples of the network layer include Internet Protocol (IP), Internet Control Message Protocol (ICMP), and Virtual Private Network (VPN) protocols such as IPSec and SSL/TLS VPN.

### Layer 4: Transport Layer

Layer 4, the transport layer, enables end-to-end communication between running applications on different hosts. Your web browser is connected to the TryHackMe web server over the transport layer, which can support various functions like flow control, segmentation, and error correction.

Examples of layer 4 are Transmission Control Protocol (TCP) and User Datagram Protocol (UDP).

### Layer 5: Session Layer

The session layer is responsible for establishing, maintaining, and synchronising communication between applications running on different hosts. Establishing a session means initiating communication between applications and negotiating the necessary parameters for the session. Data synchronisation ensures that data is transmitted in the correct order and provides mechanisms for recovery in case of transmission failures.

Examples of the session layer are Network File System (NFS) and Remote Procedure Call (RPC).

### Layer 6: Presentation Layer

The presentation layer ensures the data is delivered in a form the application layer can understand. Layer 6 handles data encoding, compression, and encryption. An example of encoding is character encoding, such as ASCII or Unicode.

Various standards are used at the presentation layer. Consider the scenario where we want to send an image via email. First, we use JPEG, GIF, and PNG to save our images; furthermore, although hidden from the user by the email client, we use MIME (Multipurpose Internet Mail Extensions) to attach the file to our email. MIME encodes a binary file using 7-bit ASCII characters.

### Layer 7: Application Layer

The application layer provides network services directly to end-user applications. Your web browser would use the HTTP protocol to request a file, submit a form, or upload a file.

The application layer is the top layer, and you might have encountered many of its protocols as you use different applications. Examples of Layer 7 protocols are HTTP, FTP, DNS, POP3, SMTP, and IMAP.


|Layer Number|Layer Name|Main Function|Example Protocols and Standards|
|---|---|---|---|
|Layer 7|Application layer|Providing services and interfaces to applications|HTTP, FTP, DNS, POP3, SMTP, IMAP|
|Layer 6|Presentation layer|Data encoding, encryption, and compression|Unicode, MIME, JPEG, PNG, MPEG|
|Layer 5|Session layer|Establishing, maintaining, and synchronising sessions|NFS, RPC|
|Layer 4|Transport layer|End-to-end communication and data segmentation|UDP, TCP|
|Layer 3|Network layer|Logical addressing and routing between networks|IP, ICMP, IPSec|
|Layer 2|Data link layer|Reliable data transfer between adjacent nodes|Ethernet (802.3), WiFi (802.11)|
|Layer 1|Physical layer|Physical data transmission media|Electrical, optical, and wireless signals|

### Questions

Q: Which layer is responsible for end-to-end communication between running applications?

A: `4`

Q: Which layer is responsible for routing packets to the proper network?

A: `3`

Q: In the OSI model, which layer is responsible for encoding the application data?

A: `6`

Q: Which layer is responsible for transferring data between hosts on the same network segment?

A: `2`


## TCP/IP Model

TCP/IP stands for Transmission Control Protocol/Internet Protocol and was developed in the 1970s by the Department of Defense (DoD). I hear you ask why DoD would create such a model. One of the strengths of this model is that it allows a network to continue to function as parts of it are out of service, for instance, due to a military attack. This capability is possible in part due to the design of the routing protocols to adapt as the network topology changes.

In our presentation of the ISO OSI model, we went from bottom to top, from layer 1 to layer 7. In this task, let’s look at things from a different perspective, from top to bottom. From top to bottom, we have:

- **Application Layer**: The OSI model application, presentation and session layers, i.e., layers 5, 6, and 7, are grouped into the application layer in the TCP/IP model.
- **Transport Layer**: This is layer 4.
- **Internet Layer**: This is layer 3. The OSI model’s network layer is called the Internet layer in the TCP/IP model.
- **Link Layer**: This is layer 2.

![](2025-12-11_16-56.png)

### Questions

Q: To which layer does HTTP belong in the TCP/IP model?

A: `Application Layer`

Q: How many layers of the OSI model does the application layer in the TCP/IP model cover?

A: `3`

Q:

A: ``



## IP Addresses and Subnets

Every host on the network needs a unique identifier for other hosts to communicate with him. Without a unique identifier, the host cannot be found without ambiguity. When using the TCP/IP protocol suite, we need to assign an IP address for each device connected to the network.

One analogy of an IP address is your home postal address. Your postal address allows you to receive letters and parcels from all over the world. Furthermore, it can identify your home without ambiguity; otherwise, you cannot shop online!

An IP address comprises four octets, i.e., 32 bits. Being 8 bits, an octet allows us to represent a decimal number between 0 and 255.

At the risk of oversimplifying things, the 0 and 255 are reserved for the network and broadcast addresses, respectively. In other words, `192.168.1.0` is the network address, while `192.168.1.255` is the broadcast address. Sending to the broadcast address targets all the hosts on the network. With simple math, you can conclude that we cannot have more than 4 billion unique IPv4 addresses. If you are curious about the math, it is approximately 232 because we have 32 bits. This number is approximate because we didn’t consider network and broadcast addresses.

On Linux and UNIX-based systems, you can issue the command `ifconfig` or `ip address show`, which can be typed as `ip a s`

A subnet mask of `255.255.255.0` can also be written as `/24`. The `/24` means that the leftmost 24 bits within the IP address do not change across the network, i.e., the subnet. In other words, the leftmost three octets are the same across the whole subnet; therefore, we can expect to find addresses that range from `192.168.66.1` to `192.168.66.254`. Similar to what was mentioned earlier, `192.168.66.0` and `192.168.66.255` are the network and broadcast addresses, respectively.

There are two types of IP addresses:

- Public IP addresses
- Private IP addresses

RFC 1918 defines the following three ranges of private IP addresses:

- `10.0.0.0` - `10.255.255.255` (`10/8`)
- `172.16.0.0` - `172.31.255.255` (`172.16/12`)
- `192.168.0.0` - `192.168.255.255` (`192.168/16`)

We presented earlier an analogy stating that a public IP address is like your home postal address. A private IP address is different; the original idea is that it cannot reach or be reached from the outside world. It is like an isolated city or a compound, where all houses and apartments are numbered systematically and can easily exchange mail with each other, but not with the outside world. For a private IP address to access the Internet, the router must have a public IP address and must support Network Address Translation (NAT)

A router is like your local post office; you hand them the mail parcel, and they would know how to deliver it. If we dig deeper, you might mail something to an address in another city or country. The post office will check the address and decide where to send it next. For example, if it is to leave the country, we expect one central office to handle all shipments abroad.

In technical terms, a router forwards data packets to the proper network. Usually, a data packet passes through multiple routers before it reaches its final destination. The router functions at layer 3, inspecting the IP address and forwarding the packet to the best network (router) so the packet gets closer to its destination

### Questions

Q: Which of the following IP addresses is not a private IP address?

- 192.168.250.125
- 10.20.141.132
- 49.69.147.197
- 172.23.182.251

A: `49.69.147.197`

Q: Which of the following IP addresses is not a valid IP address?

- 192.168.250.15
- 192.168.254.17
- 192.168.305.19
- 192.168.199.13

A: `192.168.305.19`

## UDP and TCP

The IP protocol allows us to reach a destination host on the network; the host is identified by its IP address. We need protocols that would enable processes on networked hosts to communicate with each other. There are two transport protocols to achieve that: UDP and TCP.

### UDP

UDP (User Datagram Protocol) allows us to reach a specific process on this target host. UDP is a simple connectionless protocol that operates at the transport layer, i.e., layer 4. Being connectionless means that it does not need to establish a connection. UDP does not even provide a mechanism to know that the packet has been delivered.

An IP address identifies the host; we need a mechanism to determine the sending and receiving process. This can be achieved by using port numbers. A port number uses two octets; consequently, it ranges between 1 and 65535; port 0 is reserved. (The number 65535 is calculated by the expression 216 − 1.)

A real-life example similar to UDP is the standard mail service, with no delivery confirmation. In other words, there is no guarantee that the UDP packet has been received successfully, similar to the case of sending a parcel using standard mail with no confirmation of delivery. In the case of standard mail, it means a cheaper cost than the mail delivery options with confirmation. In the case of UDP, it means better speed than a transport protocol that provides “confirmation.”

But what if we want a transport protocol that acknowledges received packets? The answer lies in using TCP instead of UDP.

### TCP

TCP (Transmission Control Protocol) is a connection-oriented transport protocol. It uses various mechanisms to ensure reliable data delivery sent by the different processes on the networked hosts. Like UDP, it is a layer 4 protocol. Being connection-oriented, it requires the establishment of a TCP connection before any data can be sent.

In TCP, each data octet has a sequence number; this makes it easy for the receiver to identify lost or duplicated packets. The receiver, on the other hand, acknowledges the reception of data with an acknowledgement number specifying the last received octet.

A TCP connection is established using what’s called a three-way handshake. Two flags are used: SYN (Synchronise) and ACK (Acknowledgment). The packets are sent as follows:

1. SYN Packet: The client initiates the connection by sending a SYN packet to the server. This packet contains the client’s randomly chosen initial sequence number.
2. SYN-ACK Packet: The server responds to the SYN packet with a SYN-ACK packet, which adds the initial sequence number randomly chosen by the server.
3. ACK Packet: The three-way handshake is completed as the client sends an ACK packet to acknowledge the reception of the SYN-ACK packet.


Similar to UDP, TCP identifies the process of initiating or waiting (listening) for a connection using port numbers. As stated, a valid port number ranges between 1 and 65535 because it uses two octets and port 0 is reserved.

### Questions

Q: Which protocol requires a three-way handshake?

A: `TCP`

Q: What is the approximate number of port numbers (in thousands)?

A: 65``


## Encapsulation

Encapsulation refers to the process of every layer adding a header (and sometimes a trailer) to the received unit of data and sending the “encapsulated” unit to the layer below.

Encapsulation is an essential concept as it allows each layer to focus on its intended function. In the image below, we have the following four steps:

- **Application data**: It all starts when the user inputs the data they want to send into the application. For example, you write an email or an instant message and hit the send button. The application formats this data and starts sending it according to the application protocol used, using the layer below it, the transport layer.
- **Transport protocol segment or datagram**: The transport layer, such as TCP or UDP, adds the proper header information and creates the TCP **segment** (or UDP **datagram**). This segment is sent to the layer below it, the network layer.
- **Network packet**: The network layer, i.e. the Internet layer, adds an IP header to the received TCP segment or UDP datagram. Then, this IP **packet** is sent to the layer below it, the data link layer.
- **Data link frame**: The Ethernet or WiFi receives the IP packet and adds the proper header and trailer, creating a **frame**.

We start with application data. At the transport layer, we add a TCP or UDP header to create a **TCP segment** or **UDP datagram**. Again, at the network layer, we add the proper IP header to get an **IP packet** that can be routed over the Internet. Finally, we add the appropriate header and trailer to get a WiFi or Ethernet frame at the link layer

![](5f04259cf9bf5b57aed2c476-1719849061418.svg)

### The Life of a Packet

Based on what we have studied so far, we can explain a _simplified version_ of the packet’s life. Let’s consider the scenario where you search for a room on TryHackMe.

1. On the TryHackMe search page, you enter your search query and hit enter.
2. Your web browser, using HTTPS, prepares an HTTP request and pushes it to the layer below it, the transport layer.
3. The TCP layer needs to establish a connection via a three-way handshake between your browser and the TryHackMe web server. After establishing the TCP connection, it can send the HTTP request containing the search query. Each TCP segment created is sent to the layer below it, the Internet layer.
4. The IP layer adds the source IP address, i.e., your computer, and the destination IP address, i.e., the IP address of the TryHackMe web server. For this packet to reach the router, your laptop delivers it to the layer below it, the link layer.
5. Depending on the protocol, The link layer adds the proper link layer header and trailer, and the packet is sent to the router.
6. The router removes the link layer header and trailer, inspects the IP destination, among other fields, and routes the packet to the proper link. Each router repeats this process until it reaches the router of the target server.

The steps will then be reversed as the packet reaches the router of the destination network

### Questions

Q: On a WiFi, within what will an IP packet be encapsulated?

A: `frame`

Q: What do you call the UDP data unit that encapsulates the application data?

A: `datagram`

Q: What do you call the data unit that encapsulates the application data sent over TCP?

A: `Segment`

## Telnet

The TELNET (Teletype Network) protocol is a network protocol for remote terminal connection. In simpler words, `telnet`, a TELNET client, allows you to connect to and communicate with a remote system and issue text commands. Although initially it was used for remote administration, we can use `telnet` to connect to any server listening on a TCP port number.

On the target virtual machine, different services are running. We will experiment with three of them:

- Echo server: This server echoes everything you send it. By default, it listens on port 7.
- Daytime server: This server listens on port 13 by default and replies with the current day and time.
- Web (HTTP) server: This server listens on TCP port 80 by default and serves web pages.

Before continuing, we should mention that the echo and daytime servers are considered security risks and should not be run; however, we started them explicitly to demonstrate communication with the server using `telnet`.

![](2025-12-11_17-19.png)

### Questions

Q: Use `telnet` to connect to the web server on `MACHINE_IP`. What is the name and version of the HTTP server?
 
A: `lighttpd/1.4.63`

Q: What flag did you get when you viewed the page?

A: `THM{TELNET_MASTER}`
