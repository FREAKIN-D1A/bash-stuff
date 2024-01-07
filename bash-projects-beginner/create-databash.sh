#!/bin/bash

PROMPT="\e[35m"
B="\e[36m"
EXIT="\e[0m" 

read -p " [+] Enter Your name :" name
read -p "  [+] Enter Your Employee ID :" id
read -p " [+] Enter Your Department :" department
read -p " [+] Enter Your Gender :" gender
  
info=$name,$id,$department,$gender
echo $info >> employee_data.csv    