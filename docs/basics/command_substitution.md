

# Bash Scripting Topics
## Command Substitution
Command substitution allows you to use the output of a command as an argument or assign it to a variable.

### Syntax: 
There are two main syntaxes for command substitution:

`command`: This backtick syntax is older but still widely used.
```bash
current_date=`date`
echo "Today's date is $current_date"
```
$(command): This syntax is preferred for its readability and nesting capability.

```bash
current_date=$(date)
echo "Today's date is $current_date"
```
### Usage:
Command substitution is useful for capturing the output of a command and using it within another command or assigning it to variables.

### Reading Input from Users
To read input from users interactively in a Bash script, you use the read command.

Syntax:

```bash
Copy code
read [-options] [variable(s)]
```
Options:
-p prompt: Displays prompt without a newline and waits for user input.
-r: Prevents backslash escapes from being interpreted.
-s: Silent mode, where the typed characters are not echoed.
Example:

```bash
echo "Enter your name:"
read name
echo "Hello, $name!"
```
#### Usage: 
read allows scripts to accept user input during execution, enabling interactive behavior and customization based on user responses.
