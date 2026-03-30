---
title: "Java Script Essentials"
user: bung3r
date: 23.12.25
description: Learn how to use JavaScript to add interactivity to a website and understand associated vulnerabilities.
tags:
  - javascript
---

# [JavaScript Essentials](https://tryhackme.com/room/javascriptessentials)

## Essential Concepts

### Variables

Variables are containers that allow you to store data values in them. Like any other language, variables in JS are similar to containers to store data. When you store something in a bucket, you also need to label it so that it can be referenced later on easily. Similarly, in JS, each variable has a name; when we store a certain value in a variable, we assign a name to it to reference it later. There are three ways to declare variables in JS: `var`, `let`, and `const`. While `var` is function-scoped, both `let`, and `const` are block-scoped, offering better control over variable visibility within specific code blocks.

### Data Types

In JS, data types define the type of value a variable can hold. Examples include `string` (text), `number`, `boolean` (true/false), null, undefined, and object (for more complex data like arrays or objects).

### Functions

A function represents a block of code designed to perform a specific task. Inside a function, you group code that needs to perform a similar task. For example, you are developing a web application in which you need to print students' results on the web page. The ideal case would be to create a function `PrintResult(rollNum)` that would accept the roll number of the user as an argument.

```javascript
   <script>
        function PrintResult(rollNum) {
            alert("Username with roll number " + rollNum + " has passed the exam");
            // any other logic to display the result
        }

        for (let i = 0; i < 100; i++) {
            PrintResult(rollNumbers[i]);
        }
    </script>
        
```

### Loops

Loops allow you to run a code block multiple times as long as a condition is `true`. Common loops in JS are `for`, `while,` and `do...while`, which are used to repeat tasks, like going through a list of items. For example, if we want to print the results of 100 students, we can call the PrintResult(rollNum) function 100 times by writing it 100 times, or we can create a loop that will be iterated through 1 to 100 and will call the PrintResult(rollNum) function as shown below.

```javascript
        // Function to print student result
        function PrintResult(rollNum) {
            alert("Username with roll number " + rollNum + " has passed the exam");
            // any other logic to the display result
        }

        for (let i = 0; i < 100; i++) {
            PrintResult(rollNumbers[i]); // this will be called 100 times 
        }
    
```


### Questions

Q: What term allows you to run a code block multiple times as long as it is a condition?

A: `loop`


## JavaScript Overview

S is an **interpreted** language, meaning the code is executed directly in the browser without prior compilation. Below is a sample JS code demonstrating key concepts, such as **defining a variable**, **understanding data types**, **using control flow statements**, and writing simple functions. These essential building blocks help create more dynamic and interactive web apps. Don’t worry if it looks a bit new now - we will discuss each of these concepts in detail later on.

```javascript
 // Hello, World! program
console.log("Hello, World!");

// Variable and Data Type
let age = 25; // Number type

// Control Flow Statement
if (age >= 18) {
    console.log("You are an adult.");
} else {
    console.log("You are a minor.");
}

// Function
function greet(name) {
    console.log("Hello, " + name + "!");
}

// Calling the function
greet("Bob");
```

JS is primarily executed on the client side, which makes it easy to inspect and interact with HTML directly within the browser.

### Questions

Q: What is the code output if the value of x is changed to 10?

A: `20`

Q: Is JavaScript a compiled or interpreted language?

A: `interpreted`

## Integrating JavaScript in HTML

### Internal JavaScript

Internal JS refers to embedding the JS code directly within an HTML document. This method is preferable for beginners because it allows them to see how the script interacts with the HTML. The script is inserted between `<script>` tags. These tags can be placed inside the `<head>` section, typically used for scripts that need to be loaded before the page content is rendered, or inside the `<body>` section, where the script can be utilised to interact with elements as they are loaded on the web page.

### External JavaScript

External JS involves creating and storing JS code in a separate file ending with a `.js` file extension. This method helps developers keep the HTML document clean and organised. The external JS file can be stored or hosted on the same web server as the HTML document or stored on an external web server such as the cloud.

### Verifying Internal or External JS

When pen-testing a web application, it is important to check whether the website uses internal or external JS. This can be easily verified by viewing the page's source code.

### Questions

Q: Which type of JavaScript integration places the code directly within the HTML document?

A: `internal`

Q: Which method is better for reusing JS across multiple web pages?

A: `external`

Q: What is the name of the external JS file that is being called by **external_test.html**?

A: `thm_external.js`

Q: What attribute links an external JS file in the `<script>` tag?

A: `src`

## Abusing Dialogue Functions

One of the main objectives of JS is to provide dialogue boxes for interaction with users and dynamically update content on web pages. JS provides built-in functions like `alert`, `prompt`, and `confirm` to facilitate this interaction. These functions allow developers to display messages, gather input, and obtain user confirmation. However, if not implemented securely, attackers may exploit these features to execute attacks like Cross-Site Scripting (XSS), which you will cover later in this module.

### Alert

The alert function displays a message in a dialogue box with an "`OK`" button, typically used to convey information or warnings to users. For example, if we want to display "`Hello THM`" to the user, we would use an `alert("HelloTHM");`. To try it out, open the Chrome console, type `alert("Hello THM")`, and press Enter. A dialogue box with the message will appear on the screen.

### Prompt

The prompt function displays a dialogue box that asks the user for input. It returns the entered value when the user clicks "`OK`", or null if the user clicks "`Cancel`". For example, to ask the user for their name, we would use `prompt("What is your name?");`.

To test this, open the Chrome console and paste the following that asks for a username and then greets him.

 `name = prompt("What is your name?");     alert("Hello " + name);`

### Confirm

The confirm function displays a dialogue box with a message and two buttons: "`OK`" and "`Cancel`". It returns true if the user clicks "`OK`" and false if the user clicks "`Cancel`". For example, to ask the user for confirmation, we would use `confirm("Are you sure?");`. To try this out, open the Chrome console, type `confirm("Do you want to proceed?")`, and press `Enter`.

### Questions

Q: In the file **invoice.html**, how many times does the code show the alert Hacked?

A: `5`

Q: Which of the JS interactive elements should be used to display a dialogue box that asks the user for input?

A: `prompt`

Q: If the user enters Tesla, what value is stored in the carName= prompt("What is your car name?")? in the carName variable?

A: `Tesla`

## Bypassing Control Flow Statements

Control flow in JS refers to the order in which statements and code blocks are executed based on certain conditions. JS provides several control flow structures such as `if-else`, `switch` statements to make decisions, and loops like `for`, `while`, and `do...while` to repeat actions. Proper use of control flow ensures that a program can handle various conditions effectively.

Conditional Statements in Action

One of the most used conditional statements is the `if-else` statements, which allows you to execute different blocks of code depending on whether a condition evaluates to `true` or `false`.

### Bypassing Login Forms

Suppose a developer has implemented authentication functionality in JS, where only users with the username "`admin`" and passwords matching a specific value are allowed to log in.

### Questions

Q: What is the message displayed if you enter the age less than 18?

A: `You are a minor.`

Q: What is the password for the user admin?

A: `ComplexPassword`

## Exploring Minified Files

We have understood how JS works and how we can read it until now, but what if the file is not human-readable and has been **minified**?

Minification in JS is the process of compressing JS files by removing all unnecessary characters, such as spaces, line breaks, comments, and even shortening variable names. This helps reduce the file size and improves the loading time of web pages, especially in production environments. Minified files make the code more compact and harder to read for humans, but they still function exactly the same.

Similarly, **obfuscation** is often used to make JS harder to understand by adding undesired code, renaming variables and functions to meaningless names, and even inserting dummy code.

### Deobfuscating a Code

We can also deobfuscate an obfuscated code using an online tool. Visit the [website](https://obf-io.deobfuscate.io/), then paste the obfuscated code into the provided dialogue box. The website will generate the equivalent, human-readable JS code for you, making it easier to understand and analyze the original script.

### Questions

Q: What is the alert message shown after running the file **hello.html**?

A:  `Welcome to THM`
 
Q: What is the value of the **age** variable in the following obfuscated code snippet?

A: `21`

## Best Practices

This task outlines the best practices for evaluating a website or writing code for a website. If you are developing a web application, you will likely end up using JS on your website. The practices below will assist you in reducing the attack surface and minimizing the chances of attack.

### Avoid Relying on Client-Side Validation Only

One of JS's primary functions is performing client-side validation. Developers sometimes use it for validating forms and rely entirely on it, which is not a good practice. Since a user can **disable/manipulate** JS on the client side, performing validation on the server side is also essential.

### Refrain from Adding Untrusted Libraries

As discussed in earlier tasks, JS allows you to include any other JS scripts using the `src` attribute inside a `script` tag. But have you considered whether the library we include is from a trusted source? Bad actors have uploaded a bundle of libraries on the internet with names that resemble legitimate ones. So, if you blindly include a malicious library, you will expose your web application to threats.

### Avoid Hardcoded Secrets

Never hardcode sensitive data like **API keys**, **access tokens**, or **credentials** into your JS code, as the user can easily check the source code and get the password. 

```javascript
// Bad Practice
const privateAPIKey = 'pk_TryHackMe-1337'; 
```

### Minify and Obfuscate Your JavaScript Code

Minifying and obfuscating JS code reduces its size, improves load time, and makes it harder for attackers to understand the logic of the code. Therefore, always **minify** and **obfuscate** the code when using code in production. The attacker can eventually reverse engineer it, but getting the original code will take at least some effort.

### Questions

Q: Is it a good practice to blindly include JS in your code from any source (yea/nay)?

A: `nay`