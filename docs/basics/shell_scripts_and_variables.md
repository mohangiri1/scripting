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

### Understanding `chmod`

`chmod` is a command used in Unix and Unix-like operating systems to change the permissions of a file or directory. This command is crucial for controlling access to files and ensuring security.

### Basic Syntax

```bash
chmod [options] mode file
```
	•	mode: Defines the permissions to set.
	•	file: Specifies the file or directory to modify.

### Understanding File Permissions

In Unix-like systems, file permissions are divided into three categories:

	1.	Owner: The user who owns the file.
	2.	Group: Users who are in the same group as the file.
	3.	Others: All other users.

Each category can have the following permissions:

	•	Read (r): Allows reading the contents of the file.
	•	Write (w): Allows modifying the contents of the file.
	•	Execute (x): Allows executing the file (for scripts and binaries).

### Numeric Mode

Permissions can be represented numerically using a three-digit octal number. Each digit ranges from 0 to 7:

	•	4: Read (r)
	•	2: Write (w)
	•	1: Execute (x)

### Combining Permissions

To combine permissions, add the corresponding values:

	•	Read + Write: 4 + 2 = 6
	•	Read + Execute: 4 + 1 = 5
	•	Read + Write + Execute: 4 + 2 + 1 = 7

#### Example
```bash
chmod 755 file.sh
```
	•	7 (owner): Read, write, execute
	•	5 (group): Read, execute
	•	5 (others): Read, execute

Symbolic Mode

Permissions can also be set using symbolic notation:

	•	u: User/Owner
	•	g: Group
	•	o: Others
	•	a: All (user, group, others)

Operators

	•	+: Adds permission
	•	-: Removes permission
	•	=: Sets exact permission

#### Example
```bash
chmod u+x file.sh
```
This command adds execute permission for the owner of file.sh.
```bash
chmod g-w file.sh
```
This command removes write permission for the group.
```bash
chmod a=r file.sh
```
This sets read-only permission for all categories.

#### Recursive Changes

To change permissions of a directory and all its contents, use the -R option:
```bash
chmod -R 755 /path/to/directory
```
This command applies 755 permissions to the directory and all files/subdirectories within it.

### Common Use Cases

#### Making a Script Executable
```bash
chmod +x script.sh
```
#### Setting Read-Only Permissions
```bash
chmod 444 file.txt
```
Sets read-only permissions for everyone.

#### Revoking All Permissions
```bash
chmod 000 file.txt
```
Revokes all permissions, making the file inaccessible.





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
