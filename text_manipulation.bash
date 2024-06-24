# Text Manipulation
# Use grep for look for patterns in your file
grep "pattern" file.txt

# Example you can look for "errors" in a log file
grep "error" logfile.log

# Use sed for replace patterns or words
sed 's/pattern/replacement/' file.txt

# Example replace 'foo' with 'bar' in a file
sed 's/foo/bar/g' file.txt

# awk its a powerful text processing and reporting tool. It works with structured text files
# (likes CSV files)
# Example: to print the first column of a text file
awk '{print $1}' file.txt

# Basic regular expression
#  . Matches any single character except newline
#  * Matches zero or more ocurrences of the proceding character
#  ^ Matches the beginning of a line of a line
#  $ Matches the end of a line
#  [abc] Matches any single character a,b or c
#  \ Escapes a special character

# Example
grep ^abc' file.txt
