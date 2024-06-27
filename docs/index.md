---
layout: default
title: Bash Scripting Overview
---

# Introduction to Bash Scripting

Bash scripting refers to the process of writing and executing scripts using the Bash shell (or "Bourne Again Shell"), which is the default command-line interpreter on most Unix-like operating systems, including Linux and macOS. Bash scripting allows users to automate repetitive tasks, create complex workflows, and enhance productivity by leveraging the power of the command line.

## Basics of Scripting

### 1. Shebang Line

The shebang line is the first line of a Bash script and specifies the path to the Bash interpreter that should be used to execute the script. It's crucial for running the script as an executable.

```bash
#!/bin/bash
```
## Comments
Comments in Bash scripts start with a # character and are used to annotate code, provide explanations, and improve readability.
```bash
# This is a comment
```
## Variables
Variables in Bash are used to store data and can be accessed using the variable name preceded by a `$` symbol.
```bash
name="John"
echo "Hello, $name!"
```
## Basic Input and Output
Echo: Outputs text or variables to the terminal.
```bash
echo "Hello, World!"
```
## Read: 
Reads input from the user and assigns it to a variable.
```bash
echo "Enter your name: "
read name
echo "Hello, $name!"
```
## Conditional Statements
If-else: Executes a set of commands based on the result of a conditional expression.
```bash
if [[ condition ]]; then
    # commands if condition is true
else
    # commands if condition is false
fi
```
## Loops
For Loop: Executes a set of commands for each item in a sequence.
```bash
for item in list; do
    # commands using $item
done
```
## While Loop: 
Executes a set of commands as long as a condition is true.
```bash
while [[ condition ]]; do
    # commands
done
```
## Functions
Functions in Bash allow you to group commands for reuse.
```bash
greet() {
    echo "Hello, World!"
}

greet  # Call the function
```

## Exit Status
Every command in Bash returns an exit status, which is a numeric value that represents the success or failure of the command. $? holds the exit status of the last executed command.
```bash
ls /path/to/nonexistent/directory
echo "Exit status: $?"  # Output: Exit status: 2 (example of a non-zero exit status)
```



