# Redirection
# > Redirects standard outpu (stdout) to a file, overwriting it
command > file.txt

# >> Redirects standard output to a file, appending to the existing file.
command >> file.txt

# < Redirects standard input (stdin) from a file
command < file.txt

# Ussing pipelines allows you to chaining commands, passing the standard outpu of one command as the 
# standar input to the next
# command1 | command2

# Example: to search for "error" in a log file and then count the matching lines
grep "error" logfile.log | wc -l

# Proccess Management
# Background and Foreground execution
# Background: Run a command in the background by adding '&' at the end
command &

# Example run a script in the background
./script.sh &

# Foreground: To bring a background process to the foreground, use 'fg'
fg %n # Where n is the job number

# Job Control: List active jobs and their states
jobs

# dg bring a background job to the foreground
fg %n

# Resumes a suspended job and runs it in the background
bg %n

# kill sends a signal to a process to terminate it. THe most common is '-9' to forcefully terminate
kill -9 PID

# Example kill a process with ID 1234
kill -9 1234
