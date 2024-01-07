#!/bin/bash

A="\e[35m"
B="\e[36m"
EXIT="\e[0m"

if [[ $# -eq 0 ]]; then
echo -e "usage\n$0 [file]"
exit 
fi

owner=`ls -la $1 | awk '{print $3}' `
size=`ls -la $1 | awk '{print $5}' `

time=`ls -la $1 | awk '{print $8}' `
month=`ls -la $1 | awk '{print $6 " " $7}' `
type=`file $1`

# readable=$((test -r $1 ? 1: 0 ))
# writable=$((test  -w $1 ?  1: 0 ))
# executable=$((test  -x $1 ?  1: 0 ))


readable=$(test -r "$1" && echo true || echo false)
writable=$(test -w "$1" && echo true || echo false)
executable=$(test -x "$1" && echo true || echo false)

echo "Owner : $owner "
echo "size : $size bytes "
echo "Creation time : $time in $month "
echo "file type ; $type"
echo
echo "Permissions:"
echo "readable: $readable"
echo "writable: $writable"
echo "executable: $executable"



# Check if the file is readable
# if [ -r $1 ]
# then
#     echo "READABLE=TRUE"
# else
#     echo "READABLE=FALSE"
# fi


# # Check if the file is writable
# if [ -w $1 ]
# then
#     echo "WRITABLE=TRUE"
# else
#     echo "WRITABLE=FALSE"
# fi


# # Check if the file is executable
# if [ -x $1 ]
# then
#     echo "EXECUTABLE=TRUE"
# else
#     echo "EXECUTABLE=FALSE"
# fi