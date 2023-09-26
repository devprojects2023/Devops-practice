#!/bin/bash

# Create a directory named "test". If it exist then remove it first and then go the test directory.
rm -rf test
mkdir test
cd test

# List of file names
files=("file.txt" "file1.txt" "file2.txt" file3.txt file4.txt)

# Content to be written to each file
content="Hello I am a devops engineer.
I love to learn devops."

for file in "${files[@]}"; do
    # Use the current file name in the loop to create distinct files
    echo "$content" > "$file"
done

# to change permission for readonly
chmod 444 file1.txt

# to change permission readwriteexecute write write 
chmod 722 file4.txt

# to change permission Read&Execute Read&Execute Only Read
chmod 554 file3.txt  


# make directory again
cd  ..
rm -rf test2
mkdir test2

#copy the file1 to test2 directroy
sudo cp test/file1.txt test2/

cd test
# list latest file and find file4 by grep command
ls -lrt | grep file4 

# to append a line  file4.txt
cat <<EOF >> file4.txt
This is a new line append in file4. 
EOF

# to symbolic link file4.txt
ln -s test/file4.txt /home/node2/test2/file5.txt

# to check instance details
uname -a

# to know which user is logged in
whoami