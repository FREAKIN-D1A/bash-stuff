#!/bin/bash

GREEN="\e[35m"
RED="\e[36m"
EXIT="\e[0m"


# Check for root privileges
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root. Please use sudo."
   exit 1
fi

# Ensure at least one argument is provided
if [ $# -eq 0 ]; then
   echo -e "Usage: $0 <package1> <package2> ..."
   exit 1
fi


# Function to check if a package is installed
is_package_installed() {
   dpkg -l "$1" >/dev/null 2>&1
}


# Iterate through the arguments and install each package
for package in "$@"; do
    echo
    echo -e "${RED}  [+] Installing $package ...${EXIT}"

   if is_package_installed "$package"; then
       echo "$package is already installed."
   else
       sudo apt-get install -y "$package"
       echo "$package has been installed."
   fi
   
    echo -e "${GREEN} [+] Successfully installed $package ... ${EXIT}"
    echo
done

echo "All packages have been installed successfully!"
