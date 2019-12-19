#! /bin/bash
echo -e "Enter the name of the file:  \c"
read file_name
if [ -e $file_name ]
then
echo $file_name found
else
echo $file_name not found
fi
# -e for file exist or not
# -f for file or not/ regular file or not
# -d for directory
# -b block spacial file (binary file ex: vido,image)
# -c cherecter spwcial file contain some text or data
# -s file is empty or not
# -r file has write permission
# -w file has read permission
# -x file has execute permission