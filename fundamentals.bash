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
