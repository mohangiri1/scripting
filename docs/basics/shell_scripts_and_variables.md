---
layout: default
title: Shell Scripts and Variables
---

# Running Shell Scripts in Bash
## Making Scripts Executable
To run a shell script, you first need to make it executable. This is done using the `chmod` command:
```bash
chmod +x script.sh
```
This command modifies the permissions of the file script.sh, making it executables.

## Running the Script
Once the script is executable, you can run it using:
```bash
./script.sh
```
The `./` indicates that the script is in the current directory.

## Variables in Bash

### Local Variables

Local variables are defined within a script and are not available outside of that script. They are typically used to store temporary data.
```bash
#!/bin/bash

# Define a local variable
local_variable="I am local"

echo $local_variable
```
### Environment Variables

Environment variables are accessible to the shell and any child processes. They are typically used to store system-wide configurations or settings that need to be shared across multiple scripts.

To define an environment variable, you use the export command:
```bash
#!/bin/bash

# Define an environment variable
export environment_variable="I am an environment variable"

# Access the environment variable
echo $environment_variable
```
### Differences Between Local and Environment Variables
Scope: Local variables are confined to the shell session or script, while environment variables are available to any child processes.
Usage: Local variables are used for temporary data, and environment variables are used for configuration data that needs to be accessible globally.

#### Example of Using Both
```bash
#!/bin/bash

# Local variable
local_var="I am local"

# Environment variable
export env_var="I am environment"

# Function to show scope
show_scope() {
  echo "Inside function:"
  echo "Local: $local_var"
  echo "Environment: $env_var"
}

show_scope

# Running another script
./another_script.sh
```
In another_script.sh, only env_var would be accessible, not local_var.
