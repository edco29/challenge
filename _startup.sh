
#! /bin/sh 
#Cleaning Screen
clear
#Import colors
source _colors.sh

#Description  
echo -e """
                           ${RED}**********${BLUE} Welcome to Challenge Task 2${RED}**********${NOCOLOR}

Please in order to execute correctly this script check carefully the description bellow :

This script recive only 2 inputs :

${GREEN}gc ò GC ${NOCOLOR}:
 - Create a Google compute with firewall rules ,  centos 7 imges and custom network.


${GREEN}AN ò an ${NOCOLOR}:
- Install Jenkins in centos7 with ansible playbook

read -p "Please select one option : " option_var


#Case statement 
case $option_var in
	 "gc" | "GC" )
		 source _gc.sh ;;
	 "AN" | "an")
		source _an.sh  ;;
	* )
		echo -e "${RED}Please enter a valid Option${NOCOLOR}" ;;
esac
