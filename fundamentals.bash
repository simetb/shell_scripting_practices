# Bash fundamentals (Don't Run)
# Temis Barreto

# Use ls to list files in current directory
ls

# Use cd to navigate to a directory
# Remember that you can use ',' to refer to the actuasl directory you are in.
# and you can use too .. to go back to the parent directory.
cd /home/user/Documents
cd ./
cd ../

# You can use pwd to print the current directory.
# pwd = Print Working Directory
pwd

# Use cp to copy a file
# This have multiples usages.
# 1- Copy a file to other file.
cp file1.txt file2.txt

# 2- Copy a file to a directory.
cp file1.txt ./route

# 3- Copy a directory and his content
cp -r origin_directory ./route/etc
# -r (--recursive) it's necesary to copy recursively all the content inside the folder

# 4- Mantain the properties of the original file.
cp -p file1.txt file2.txt
# -p (--preserve) it's necesary to copy the properties of the original file.

# 5- Ask for confirmation before the copy.
cp -i origin.txt destiny.txt
# -i (--interactive) it's necesary to ask for confirmation before the copy.

# 6- Show the progress of the copy.
cp -v origin.txt destiny.txt
# -v (--verbose) it's necesary to show the progress of the copy.

# If you want to see more detailed information you can use man cp.
man cp

# Use mv to move files
# You can use also the same usages as cp in the options.
mv file.txt ./route

# Use -f to force the move.
mv -f file.txt ./route

# Use rm to remove files
rm file.txt

# You can also remove more than one file at the same time.
rm file1.txt file2.txt

# If you fant to delete an empty directory.
rmdir empty_directory

# Use -r to remove a directory and its content.
rm -r directory

# Use -f to force the removal of a file.
rm -f file.txt

# If you want to remove a directory and its content.
rm -rf directory

# If you jsut want to delete the content of a directory without the directory itself.
rm -rf route/*
# If you have some hidden files you can do
rm -rf route/{*,.*}

# And if you want to create a directoy with a specific name use
mkdir directory_name
# Create a directory in a route.
mkdir ./route/directory_name

# You have diferent commands to see the content of a file
# You can use cat(concatenate) <file> to see all the content 
cat file.txt

# Or concatenate a file before show it
cat file.txt file_two.txt

# Or just show the file total lines amount
cat -n file.txt

# You can use the command less to see all the content of the file in a paginated way
less file.txt
# Use 'space' to go to other page
# Use 'b' to go back
# Use 'q' to leave the visor

# You can use more but this do the same than less but with more less functionabilities
more file.txt

# You can use the command head to look for the firts 10 lines in the file
head file.txt

# You can also specify how many lines you want to show using -n <n_lines>
head -n <number> file.txt

# And for the other hand use tail to see the last 10 lines of the file (works same as head)
tail file.txt or tail -n <number> file.txt
