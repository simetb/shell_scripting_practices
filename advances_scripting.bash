#!/bin/bash
# Interactive scripts: read and select

# The command read allows bash script to interact with the user by propting for
# and capturing the input
echo "Enter your name:"
read name
echo "Hello $name!"

# The select command is used to create interactive menus. it allows user to choose
# an option from a list

PS3="Choose an option: "
options=("Option 1" "Option 2" "Exit")
select opt in "${options[@]}"
do
    case $opt in
        "Option 1")
            echo "You chose Option 1"
            ;;
        "Option 2")
            echo "You chose Option 2"
            ;;
        "Exit")
            break
            ;;
        *)
            echo "Invalid option"
            ;;
    esac
done
            
# Error handling and debugging
# Use commands like 'set -e' to make the script exit on errors, and 'trap' to 
# execture commands when certain events (like errors) occur.
set -e
trap 'echo "Error: ocurred"; exit' ERR
cp cp nonexistent_file.txt destination/

# Debugging You can enable debugging mode with 'set -x' which will display each
# command and its result as they are executed
set -x
echo "Debugging enabled"
ls
set +x
echo "Debugging disabled"

# Using arrays
# Bash support arrays, which are list of indexed elements
names=("John" "Jane" "Jake" "Jill")
echo "The first name is ${names[0]}"
names[3]="Maria"
for name in "${names[@]}"; do
    echo "The name is $name"
done

# Automatization and cronjobs
# Bash scripts are ideal for automating repetitive tasks such as backups,
# directory cleaning and more

# Example of a backup automation
tar -czf backup_$(date +%F).tar.gz /path/to/directory

# Setting up a cronjob to run Scripts periodically
# # Cron: A tool for scheduling tasks to run periodically.
# # Crontab: The file where cron jobs are specified
# Edit crontab
crontab -e
# Add a line to run a script every day at 12:30
30 12 * * * /path/to/script.sh

# Best practices and security
# # 1 - Writing clean and well documented code
# # # COMMENTS: Use comments to describe every functionality of the code
# # # FORMATING: Mantain consistent and readable formatting
# # # DESCRIPTIVE NAMES: Use descriptive names for variables, functions, etc.

# # 2 - Security Considerations when writing scripts
# # # INPUT VALIDATION: Vdalidate and sanitaze all user inputs
# Example of input validation
read -p "Enter a number: " number
if [[ ! $number =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a number."
    exit 1
fi
# # # LEAST PREVILEGE: Run scripts with the minimum privileges required
# # # PERMISSION MANAGMENT: Use proper permissions to control access to files and directories
# Assign execution permissions only to the owner
chmod 700 script.sh
# # # SECURE STORAGE OF SENSITIVE INFORMATION: Avoid storing sensitive information in plain text.

