---
title: "Bashscripting"
user: bung3r
description: A Walkthrough room to teach you the basics of bash scripting
tags:
  - linux
  - bashscripting
---
# [Bash Scripting](https://tryhackme.com/room/bashscripting)

Examples:
1. [[example| Basic Example]]
2. [[conditionals| Example with Conditionals]]
3. [[check_file_has_w_permission| Check if a file has write permission]]

---

A bash script always starts with:

```bash
#!/bin/bash
```

So your shell knows to run bash when you run the script

Debugging:

```bash
bash -x ./file.sh
```

And in the script:

```bash
echo "hi"

set -x

# this section will be debugged

set +x
```

## Parameters

```bash

name=$1 # this will be the first argument given to the terminal when running the script

echo $name

```

It is possible to not supply them manually, but make it more interactive with *read*.

Check number of arguments supplied to the script:

$#

## Arrays

@ - all arguments

- Delete an element:

```bash

unset array[1]

```

It removes the item but does not shift the others with one position, i.e if we echo array[1] we will get blank.

# Conditionals

If statements:

if [ smth comparison smth else]
then
	something
else
	something different
fi

If statements always use a pair of brackets and in the case of the [] we need to leave a space on both sides of the text(the bash syntax). We also always need to end the if statement with fi.

Comparison operators for integers:

-eq
-ne
-gt
-lt
-ge
...