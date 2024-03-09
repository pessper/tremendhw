#!/bin/bash

# Function to print error message and exit
function print_error_exit {
    echo "Error: $1"
    exit 1
}

# Function to check if script is executed with appropriate privileges
function check_privileges {
    if [[ $EUID -ne 0 ]]; then
        print_error_exit "This script must be run as root."
    fi
}

# Function to print the home directory
function print_home_directory {
    echo "Home directory:"
    echo $HOME
    echo
}

# Function to list all usernames from the passwd file
function list_usernames {
    echo "Usernames from passwd file:"
    cut -d: -f1 /etc/passwd
    echo
}

# Function to count the number of users
function count_users {
    echo "Number of users:"
    cat /etc/passwd | wc -l
    echo
}

# Function to find the home directory of a specific user
function find_user_home {
    read -p "Enter username to find home directory: " username
    user_home=$(grep "^$username:" /etc/passwd | cut -d: -f6)
    echo "Home directory of $username: $user_home"
    echo
}

# Function to list users with specific UID range
function list_users_uid_range {
    echo "Users with UID range 1000-1010:"
    awk -F: '$3 >= 1000 && $3 <= 1010 {print $1}' /etc/passwd
    echo
}

# Function to find users with standard shells
function find_standard_shell_users {
    echo "Users with standard shells (/bin/bash or /bin/sh):"
    grep -E "/bin/(bash|sh)" /etc/passwd | cut -d: -f1
    echo
}

# Function to replace '/' character with '\' character in the entire /etc/passwd file and redirect the content to a new file
function replace_characters {
    echo "Replacing '/' with '\' in /etc/passwd file..."
    sed 's/\//\\/g' /etc/passwd > /tmp/passwd_modified
    echo "Modified file created: /tmp/passwd_modified"
    echo
}

# Function to print the private IP
function print_private_ip {
    echo "Private IP:"
    hostname -I | awk '{print $1}'
    echo
}

# Function to print the public IP
function print_public_ip {
    echo "Public IP:"
    curl -s ifconfig.me
    echo
}

# Function to switch to john user
function switch_user {
    echo "Switching to user 'john':"
    su - john -c 'whoami'
    echo
}

# Function to print the home directory of current user
function print_current_user_home {
    echo "Home directory of current user:"
    echo $HOME
}

# Main function
function main {
    check_privileges
    print_home_directory
    list_usernames
    count_users
    find_user_home
    list_users_uid_range
    find_standard_shell_users
    replace_characters
    print_private_ip
    print_public_ip
    switch_user
    print_current_user_home
}

# Call the main function
main