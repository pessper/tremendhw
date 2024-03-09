## How It Works

### Error Handling

The script includes error handling to ensure that it is executed with appropriate privileges. It checks if the script is run with root privileges using the `check_privileges` function. If not, it exits gracefully with an informative error message.

### Functionality

1. Print Home Directory: The `print_home_directory` function retrieves and prints the home directory of the current user using the `$HOME` environment variable.

2. List Usernames: The `list_usernames` function extracts usernames from the `/etc/passwd` file using the `cut` command and prints them to the console.

3. Count Users: The `count_users` function counts the number of users on the system by counting the lines in the `/etc/passwd` file using the `wc -l` command.

4. Find User Home Directory: The `find_user_home` function prompts the user to enter a username and then searches the `/etc/passwd` file for the corresponding entry to find the user's home directory.

5. List Users UID Range: The `list_users_uid_range` function lists users within a specific UID range (1000-1010) by filtering entries in the `/etc/passwd` file using `awk`.

6. Find Standard Shell Users: The `find_standard_shell_users` function identifies users with standard shells (/bin/bash or /bin/sh) by searching for specific patterns in the `/etc/passwd` file using `grep`.

7. Replace Characters in Password File: The `replace_characters` function replaces the '/' character with '\' in the entire `/etc/passwd` file using `sed` and redirects the modified content to a new file.

8. Print Private IP: The `print_private_ip` function retrieves and prints the private IP address of the system using the `hostname` command.

9. Print Public IP: The `print_public_ip` function fetches and prints the public IP address of the system using the `curl` command to query an external service (ifconfig.me).

10. Switch User: The `switch_user` function switches to the 'john' user using the `su` command and prints the username to confirm the switch.

11. Print Current User Home Directory: The `print_current_user_home` function prints the home directory of the current user using the `$HOME` environment variable.

## Prerequisites

- This script must be executed with root privileges to perform certain actions like accessing system files (/etc/passwd) and obtaining network information.

## Usage

1. Ensure the script file (`passwd_file_manipulation.sh`) has execute permissions: "chmod +x passwd_file_manipulation.sh"
2. Run the script: "./passwd_file_manipulation.sh"
3. Follow the prompts to interact with different functionalities provided by the script.

## Disclaimer

- Use this script responsibly and ensure that you have appropriate permissions before executing it on a system.
- The script may require internet access to fetch the public IP address using the `curl` command.
