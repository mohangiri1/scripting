---
layout: default
title: Exit Status
---

In Bash scripting, an exit code is a numeric value that indicates the success or failure of a command or script.expand_more It's a way for programs to communicate their execution status to the shell or other scripts.expand_more

## Understanding Exit Status
0 (Zero): Indicates successful execution.expand_more This is the convention for most commands and scripts.expand_more
Non-Zero: Represents an error or abnormal termination. The specific meaning of a non-zero exit code can vary depending on the command. Some common examples:
1: Often indicates a generic error.
2: Can signal invalid user input or arguments.
126: Permission errors.
127: Command not found.
### Note: 
The specific exit code meanings can be found in the man page (manual documentation) for the particular command.

## Checking Exit Status
The special variable $? holds the exit code of the last executed command. You can use it within your script or on the command line to check the status.

### Example
```bash
# Run a command (replace `command` with your actual command)
command

# Check the exit code
echo "Exit code: $?"
```
This will print the exit code of the `command`.

### Using Exit Codes in Script Logic
You can leverage exit codes to control the flow of your script using conditional statements like `if` and `else`.

#### Example:
```bash
# Try to create a file
touch myfile.txt

if [ $? -eq 0 ]  # Check if exit code is 0 (success)
then
  echo "File created successfully!"
else
  echo "Error creating file."
fi
```
This script attempts to create a file. If the touch command succeeds (exit code 0), it prints a success message. Otherwise, it prints an error message.

By effectively using exit codes, you can create robust and informative Bash scripts that handle errors gracefully and adapt their behavior accordingly.

# Common Practices
## Error Handling: 
Scripts typically use conditional statements (if, else, elif) to check the exit codes of commands and take appropriate actions based on success or failure.

```bash
command
if [ $? -eq 0 ]; then
    echo "Command succeeded"
else
    echo "Command failed"
fi
```
## Exit Codes in Scripts: 
When writing scripts, it's good practice to define and use consistent exit codes to communicate specific conditions back to calling processes or users.
