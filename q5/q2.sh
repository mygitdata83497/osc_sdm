#!/bin/bash

display_menu(){
echo "1.date"
echo "2.calender"
echo "3.ls"
echo "4.pwd"
echo "5.exit"
}


execute_command(){
choice=$1
case $choice in
1)
echo "Today's date and time : "
date
;;
2)
echo "Calender :"
cal
;;
3)
echo "Directory name :"
ls
;;
4)
echo "Present working directory :"
pwd
;;
5)
echo "Exit"
exit
;;
esac
}


while true; 
do
display_menu
read choice
execute_command $choice
done
