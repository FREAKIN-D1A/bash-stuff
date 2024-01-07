#!/bin/bash
clear

# Color codes for terminal output.
RED="\e[1;31m"
GREEN="\e[1;32m"
DIV="\e[1;36m"
EXIT="\e[0m"
# Function to print a divider line.
divider () {
    echo
	echo -e "${DIV}===========================================${EXIT}"
    echo
}


# Displaying the title of the script.
echo -e "                  ${GREEN} ****************************** ${EXIT} "
echo -e "                  ${GREEN}***** SERVER UTILIZATION *****${EXIT}"
echo -e "                  ${GREEN}******************************${EXIT}"
divider
echo 


# Displaying the current date.
echo -e " ${DIV} Today's date is :${EXIT} `date` "
divider

# Displaying system uptime.
echo  -e " ${DIV} Uptime: ${EXIT} `uptime`  ${EXIT} "
divider


# Displaying currently logged-on users.
echo  -e " ${RED} Currently logged-on users:  ${EXIT} "
w
divider


# Displaying last logins.
echo -e  " ${RED} Last logins  ${EXIT} "
last -a | head -n 6
divider


# Displaying disk and memory usage.
echo  -e " ${RED} Disk and Memory usage  ${EXIT} "
echo
df -h | xargs | awk '{print "Free/Total disk:" $11 "/" $9 }'
echo
free -m | xargs | awk '{print "Free/Total memory:"  $17 "/" $8  "MB"}'
divider


# Displaying system utilization and most expensive processes.
echo -e  " ${RED} Utilization and most expensive processes  ${EXIT} "
echo
top -b | head -n 3
echo 
top -b | head -n 10 | tail -n 4
echo
divider