#!/bin/bash

# ls | grep -i '\.jpg$' | xargs bash jpg2png.sh

A="\e[35m"
B="\e[36m"
EXIT="\e[0m"

if [[ $# -eq 0 ]]; then
echo -e "usage\n$0 [file1] [file2] .... [filen]"
exit 
fi

for i in $@ ; do
if [[ -f $i ]] ; then
file_name=`echo $i | sed "s/[.].*//" `
convert $i $file_name.png
else
echo -e "ERROR $i is not a regular file. "
fi
done

echo "[+] File conversion completed."
