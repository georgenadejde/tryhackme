---
title: "Race Conditions"
user: bung3r
date: 03.02.2026
description: Learn about race conditions and how they affect web application security.
tags:
  - racecondition
---
# [Race Conditions](https://tryhackme.com/room/raceconditionsattacks)

## Introduction

Let’s say we are tasked with testing the security of an online shopping web application. Many questions pop up. Can we reuse a single $10 gift card to pay for a $100 item? Can we apply the same discount to our shopping cart multiple times? The answer is _maybe_! If the system is susceptible to a race condition vulnerability, we can do all this and more.

This room introduces the race conditions vulnerability. A race condition is a situation in computer programs where the timing of events influences the behaviour and outcome of the program. It typically happens when a variable gets accessed and modified by multiple threads. Due to a lack of proper lock mechanisms and synchronization between the different threads, an attacker might abuse the system and apply a discount multiple times or make money transactions beyond their balance.

## Multi-Threading

### Programs

A **program** is a set of instructions to achieve a specific task. You need to execute the program to accomplish what you want. Unless you execute it, it won’t do anything and remains a set of static instructions.

Think of it as a recipe.

### Processes

One afternoon, you decide to try out this new coffee recipe you downloaded online. You start going through the recipe one step at a time. You are in the process of making this coffee recipe. While in the “process” of “executing” the “instructions,” you might get interrupted by an urgent call. Or you might work on another “job” while waiting for the water to heat. Interruptions and waiting are generally unavoidable. The act of carrying out the recipe instructions to make coffee is similar to the process of executing program instructions.

A **process** is a **_program_** in execution. In some literature, you might come across the term **job**. Both terms refer to the same thing, although the term process has superseded the term job. Unlike a program, which is static, a process is a dynamic entity. It holds several key aspects, in particular:

- **Program**: The executable code related to the process
- **Memory**: Temporary data storage
- **State**: A process usually hops between different states. After it is in the New state, i.e., just created, it moves to the Ready state, i.e., ready to run once given CPU time. Once the CPU allocates time for it, it goes to the Running state. Furthermore, it can be in the Waiting state pending I/O or event completion. Once it exits, it moves to the Terminated state.

![State diagram showing the 5 states of a process: New, Ready, Running, Waiting, and Terminated](659a97b7bb26b976007d5eae2b341e82.svg)

### Threads

Let’s wrap up with another coffee analogy! Consider the case of a commercial espresso machine in a coffee shop. Let’s say it has two portafilters. At the start of the work day, the barista turns on the espresso machine, and whenever a customer orders an espresso, one portafilter is used to prepare an espresso shot for them. Does another customer order an espresso? No problem, the second portafilter to the rescue! The warmed-up espresso machine is the process; each new order is assigned a portafilter; that’s the analogy for the thread.

A thread is a lightweight unit of execution. It shares various memory parts and instructions with the process.

In many cases, we need to replicate the same process repeatedly. Think of a web server serving thousands of users the same page (or a personalized page). We can adopt one of two main approaches:

- Serial: One process is running; it serves one user after the other sequentially. New users are enqueued.
- Parallel: One process is running; it creates a thread to serve every new user. New users are only enqueued after the maximum number of running threads is reached.

### Questions

Q: You downloaded an instruction booklet on how to make an origami crane. What would this instruction booklet resemble in computer terms?

A: `Program`

Q: What is the name of the state where a process is waiting for an I/O event?

A: `Waiting`

## Race Conditions

Let’s consider this scenario:

- A bank account has $100.
- Two threads try to withdraw money at the same time.
- Thread 1 checks the balance (sees $100) and withdraws $45.
- **Before Thread 1 updates the balance**, Thread 2 also checks the balance (incorrectly sees $100) and withdraws $35.

We cannot be 100% certain which thread will get to update the remaining balance first; however, let’s assume that it is Thread 1. Thread 1 will set the remaining balance to $55. Afterwards, Thread 2 might set the remaining balance to $65 if not appropriately handled. (Thread 2 calculated that $65 should remain in the account after the withdrawal because the balance was $100 when Thread 2 checked it.) In other words, the user made two withdrawals, but the account balance was deducted only for the second one because Thread 2 said so!

Let’s consider another scenario:

- A bank account has $75.
- Two threads try to withdraw money at the same time.
- Thread 1 checks the balance (sees $75) and withdraws $50.
- **Before Thread 1 updates the balance**, Thread 2 checks the balance (incorrectly sees $75) and withdraws $50.

Thread 2 will proceed with the withdrawal, although such a transaction should have been declined.

Examples A and B demonstrate a Time-of-Check to Time-of-Use (TOCTOU) vulnerability.

### Causes

As we saw in the last program, two threads were changing the same variable. Whenever the thread was given CPU time, it rushed to increase `x` by 1. Consequently, these two threads were “racing” to increment the same variable. This program shows a straightforward example happening on a single host.

Generally speaking, a common cause of race conditions lies in shared resources. For example, when multiple threads concurrently access and modify the same shared data. Examples of shared data are a database record and an in-memory data structure. There are many subtle causes, but we will mention three common ones:

- **Parallel Execution**: Web servers may execute multiple requests in parallel to handle concurrent user interactions. If these requests access and modify shared resources or application states without proper synchronization, it can lead to race conditions and unexpected behaviour.
- **Database Operations**: Concurrent database operations, such as read-modify-write sequences, can introduce race conditions. For example, two users attempting to update the same record simultaneously may result in inconsistent data or conflicts. The solution lies in enforcing proper locking mechanisms and transaction isolation.
- **Third-Party Libraries and Services**: Nowadays, web applications often integrate with third-party libraries, APIs, and other services. If these external components are not designed to handle concurrent access properly, race conditions may occur when multiple requests or operations interact with them simultaneously.
### Questions

Q: Does the presented Python script guarantee which thread will reach 100% first? (Yea/Nay)

A: `Nay`

Q: In the second execution of the Python script, what is the name of the thread that reached 100% first?

A: `Thread-1`

## Web Application Architecture

Web applications follow a client-server model:

- **Client**: The client is the program or application that initiates the request for a service. For example, when we browse a web page, our web browser requests the web page (file) from a web server.
- **Server**: The server is the program or system that provides these services in response to incoming requests. For instance, the web server responds to an incoming HTTP `GET` request and sends an HTML page (or file) to the requesting web browser (client).

Generally speaking, the client-server model runs over a network. The client sends its request over the network, and the server receives it and processes it before sending back the required resource.

A web application follows a multi-tier architecture. Such architecture separates the application logic into different layers or tiers. The most common design uses three tiers:

- **Presentation tier**: In web applications, this tier consists of the web browser on the client side. The web browser renders the HTML, CSS, and JavaScript code.
- **Application tier**: This tier contains the web application’s business logic and functionality. It receives client requests, processes them, and interacts with the data tier. It is implemented using server-side programming languages such as Node.js and PHP, among many others.
- **Data tier**: This tier is responsible for storing and manipulating the application data. Typical database operations include creating, updating, deleting, and searching existing records. It is usually achieved using a database management system (DBMS); examples of DBMS include MySQL and PostgreSQL.

![A web browser accessing a web server. The web server is connected to a database over the cloud.](d81b4960e5e7d02aaf91b4d1f4c336c4.svg)

Consider the example of transferring money to a friend or your other account. The program will progress as follows:

1. The user clicks on the “Confirm Transfer” button
2. The application queries the database to confirm that the account balance can cover the transfer amount
3. The database responds to the query
    1. If the amount is within the account limits, the application conducts the transaction
    2. If the amount is beyond the account limits, the application shows an error message

![A flowchart for a program responsible for money transfers.](a85571359f7d2a6df3f6135b3e49a069.svg)

In an ideal scenario, the code above leads to two program states:

- Amount not sent
- Amount sent

![A state diagram for program responsible for money transfers; it shows two states.](5f04259cf9bf5b57aed2c476-1750346443769.svg)

Let’s consider the example of applying a discount coupon. The user goes to their shopping cart and adds a coupon to get a discount. The steps might be something along the following lines:

1. The user enters a coupon code
2. The application queries the database to determine whether the coupon code is valid and whether any constraints exist
3. The database responds with validity and constraints
    1. The discount is applied if the code is valid and there are no constraints on applying it for this user.
    2. An error message is displayed if the code is invalid or there are constraints on applying it for this user.

![Example flowchart of the code responsible for applying a discount coupon.](5f22358005dabe4be5ded6a16b7499ad.svg)

The above code leads to a few program states:

- Coupon not applied
- Coupon applied

![A state diagram for the code responsible for applying a discount coupon; it shows two states.](d6787ffe68c2d225144344700326529d.svg)

Let’s continue our analysis of applying a discount coupon. Ideally, we expect two states: **Coupon not applied** and **Coupon applied**. However, this is too simplistic to depict real sophisticated scenarios. We can add an intermediary state: **Checking coupon applicability**.

![A state diagram for the code responsible for applying a discount coupon; it shows three states.](0fc7e963d1e251b50b379d0a19039e6f.svg)

Depending on how the application is developed, we can expect more states. For example, **Checking coupon applicability** might involve two states: **Checking coupon validity** and **Checking coupon constraints**. A coupon might be valid, but existing constraints prevent it from being applied. Similarly, **Coupon applied** might be divided into two states, one of which is **Recalculating total**.

![A state diagram for the code responsible for applying a discount coupon; it shows five states.](a39d6bea81fd850ce9e02f9fbfdc4d55.svg)

In the state diagram above, we can see that we pass through multiple states before the coupon is marked as applied. Let’s draw the states on a time axis, as shown below.

![Timeline showing the different states that the application goes through as it applies a discount coupon.](4bcf6a7618f9a140f0807ae590106b78.svg)

There is a time window between the instant we try to add a coupon and the instant where the coupon is marked as applied and cannot be applied again. As long as the coupon is not marked as applied, most likely, no controls prevent it from being accepted repeatedly. We might be able to apply it multiple times during this time window.

This situation is similar when considering the states for the program making a money transfer. Although ideally speaking, it would be two states, considering the business logic, we can easily update the diagram to include three states. The reason is that we expect some time spent checking the account balance and limits; although this amount of time might be brief, it is not zero. If we dig deeper, we can uncover more “hidden” states.

![A state diagram for program responsible for money transfers; it shows three states.](5f04259cf9bf5b57aed2c476-1750346478448.svg)

However, even if the web application is vulnerable, we still have one challenge to overcome: timing. Even in vulnerable applications, this “window of opportunity” is relatively short; therefore, exploiting it necessitates that our requests reach the server simultaneously. In practice, we aim to get our repeated requests to reach the server only milliseconds apart.

How can we get our duplicated requests to reach the server within this short window? We need a tool such as Burp Suite.

### Questions

Q: How many states did the original state diagram of “validating and conducting money transfer” have?

A: `2`

Q: How many states did the updated state diagram of “validating and conducting money transfer” have?

A: `3`

Q: How many states did the final state diagram of “validating coupon codes and applying discounts” have?

A: `5`

## Exploiting Race Conditions

In the image below, we can see:

1. A `POST` request
2. The details show the target phone number and a transfer amount of $1.5
3. In the response, we can infer that the transaction is successful

![Burp Sutie Proxy HTTP history showing an HTTP POST request and response.](714563c050f0418dd577a28c99ac00e8.png)  

Now that we have seen how the system reacts to valid and invalid requests, let’s see if we can exploit a race condition.

Right-click on the `POST` request you want to duplicate and choose **Send to Repeater**.

In the **Repeater** tab, as shown in the numbered screenshots below:

1. Click on the `+` icon next to the received request tab and select **Create tab group**
2. Assign a group name, and include the tab of the request you just sent to the importer before clicking **Create**
3. Right-click on the request tab and choose **Duplicate tab** (If this option is not available in your version, you can press **CTRL**+**R** multiple times instead)
4. As a starting point, we will duplicate it 20 times
5. Next to the Send button, the arrow pointed downwards will bring a menu to decide how you want to send the duplicated requests

![Creating a tab group in Burp Suite Repeater.](0791576ab6442ee8bc7b5c816075a48e.png)  

![Duplicating a tab 20 times within a tab group in Burp Suite Repeater.](58ea5e9b87072fde3c104aa8c69dcb80.png)  

Next, we will exploit the target application by sending the duplicated request. Using the built-in options in Burp Suite Repeater, the drop-down arrow offers the following choices:

- Send group in sequence (**single connection**)
- Send group in sequence (**separate connections**)
- Send group in parallel

Sending the group in sequence provides two options:

- Send group in sequence (**single connection**)
- Send group in sequence (**separate connections**)

**Send Group in Sequence over a Single Connection**

This option establishes a single connection to the server and sends all the requests in the group’s tabs before closing the connection. This can be useful for testing for potential client-side desync vulnerabilities.

**Send Group in Sequence over Separate Connections**

As the name suggests, this option establishes a TCP connection, sends a request from the group, and closes the TCP connection before repeating the process for the subsequent request.

We tested this option to attack the web application. The screenshot below shows 21 TCP connections for the different POST requests in the group we sent.

- The first group (labelled 1) comprises five successful requests. We could confirm that they were successful by checking the respective responses. Furthermore, we noticed that each took around 3 seconds, as indicated by the duration (labelled 3).
- The second group (labelled 2) shows sixteen denied requests. The duration was around four milliseconds. It is interesting to check the Relative Start time as well.

![Wireshark showing 21 different POST requests; five are successful and the remaining ones are not successful.](5b4c02c24aa5d28de8856a161416cb24.png)  

The screenshot below shows the whole TCP connection for a request. We can confirm that the `POST` request was sent in a single packet.

![Wireshark showing the TCP connection related to a POST request.](c74da214d087b71fa9a7cffe37f0d439.png)

Choosing to send the group’s requests in parallel would trigger the Repeater to send all the requests in the group at once. In this case, we notice the following, as shown in the screenshot below:

- In the Relative Start column, we notice that all 21 packets were sent within a window of 0.5 milliseconds (labelled 1).
- All 21 requests were successful; they resulted in a successful credit transfer. Each request took around 3.2 seconds to complete (labelled 2).

![Wireshark showing 21 requests sent in parallel and at the same time.](0eeea41a616bc42b2eff1dbaa35d9483.png)  

By paying close attention to the screenshot above, we notice that each request led to 12 packets; however, in the previous attempt (send in sequence), we see that each request required only 10 packets. Why did this happen?

According to [Sending Grouped HTTP Requests](https://portswigger.net/burp/documentation/desktop/tools/repeater/send-group) documentation, when sending in parallel, Repeater implements different techniques to synchronize the requests’ arrival at the target, i.e., they arrive within a short time frame. The synchronization technique depends on the HTTP protocol being used:

- In the case of HTTP/2+, the Repeater tries to send the whole group in a single packet. In other words, a single TCP packet would carry multiple requests.
- In the case of HTTP/1, the Repeater resorts to last-byte synchronization. This trick is achieved by withholding the last byte from each request. Only once all packets are sent without the last-byte are the last-byte of all the requests sent. The screenshot below shows our `POST` request sent over two packets.

![Wireshark showing the TCP connection related to a POST request when using last-byte synchronization.](50de5a50b80906df95054b339eb87826.png)

### Questions

Q: You need to get either of the accounts to get more than $100 of credit to get the flag. What is the flag that you obtained?

![](2026-02-03_19-09.png)

A: `THM{PHONE-RACE}`

## Detection and Mitigation

Detecting race conditions from the business owner’s perspective can be challenging. If a few users redeemed the same gift card multiple times, it would most likely go unnoticed unless the logs are actively checked for certain behaviours. Considering that race conditions can be used to exploit even more subtle vulnerabilities, it is clear that we need the help of penetration testers and bug bounty hunters to try to discover such vulnerabilities and report their findings.

Penetration testers must understand how the system behaves under normal conditions when enforced controls are enforced. The controls can be: use once, vote once, rate once, limit to balance, and limit to one every 5 minutes, among others. The next step would be to try to circumvent this limit by exploiting race conditions. Figuring out the different system’s states can help us make educated guesses about time windows where a race condition can be exploited. Tools such as Burp Suite Repeater can be a great starting point.

We will list a few mitigation techniques.

- **Synchronization Mechanisms**: Modern programming languages provide synchronization mechanisms like locks. Only one thread can acquire the lock at a time, preventing others from accessing the shared resource until it’s released.
- **Atomic Operations**: Atomic operations refer to indivisible execution units, a set of instructions grouped together and executed without interruption. This approach guarantees that an operation can finish without being interrupted by another thread.
- **Database Transactions**: Transactions group multiple database operations into one unit. Consequently, all operations within the transaction either succeed as a group or fail as a group. This approach ensures data consistency and prevents race conditions from multiple processes modifying the database concurrently.

## Challenge Web App

![](2026-02-03_19-12.png)

![](2026-02-03_19-13.png)

![](2026-02-03_19-14.png)

We send the POST request to repeater and try to repeat the same procedure as before.

![](2026-02-03_19-15.png)

It seems that money did go from the account, but the receiver does not have over 1000$ to get us the flag. So we will try again with the other user.

![](2026-02-03_19-18.png)

The amount did increase from ~500 to ~800:

![](2026-02-03_19-20.png)

### Questions

Q: What flag did you obtain after getting an account’s balance above $1000?

A: `THM{BANK-RED-FLAG}`

