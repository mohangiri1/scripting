---
layout: default
title: Functions
---

# Functions in Bash Scripting

Functions in Bash scripting allow you to group commands for reuse, making your scripts more modular and readable. Here’s a detailed guide on how to define, use, and handle functions in Bash.

## Defining Functions

To define a function in Bash, use the following syntax:

```bash
function_name() {
    # Commands to be executed
    # inside the function
}
```
## For Example
```bash
# Function without arguments
greet() {
    echo "Hello, World!"
}

# Function with arguments
greet_person() {
    local name=$1  # local variable within the function
    echo "Hello, $name!"
}
```
## Calling Functions
You call a function by simply using its name followed by parentheses:
```bash
greet  # Calling greet function
greet_person "Alice"  # Calling greet_person function with argument
```
## Function Arguments
Functions can accept arguments just like scripts. These arguments are accessed using `$1`, `$2`, etc., inside the function:
```bash
greet_person() {
    local name=$1
    echo "Hello, $name!"
}

greet_person "Bob"  # Output: Hello, Bob!
```

## Returning Values
Functions can return values using the return statement. The return value is stored in the special variable `$?`:
```bash
get_square() {
    local num=$1
    local square=$((num * num))
    echo $square
}

result=$(get_square 5)
echo "Square of 5 is $result"  # Output: Square of 5 is 25
```
## Using Local Variables
Declare variables as local to restrict their scope to within the function:
```bash
process_file() {
    local filename=$1
    # Commands using $filename
}
```
## Error Handling
Functions can use exit to terminate with a specific status code:
```bash
validate_input() {
    if [[ ! $1 ]]; then
        echo "Error: Missing input"
        exit 1
    fi
}

validate_input "$user_input"
```
## Recursive Functions
Bash supports recursive functions for tasks like factorial calculation:
```bash
factorial() {
    if [[ $1 -le 1 ]]; then
        echo 1
    else
        local val=$(( $1 - 1 ))
        local result=$(factorial $val)
        echo $(( $1 * $result ))
    fi
}

result=$(factorial 5)
echo "Factorial of 5 is $result"  # Output: Factorial of 5 is 120
```
