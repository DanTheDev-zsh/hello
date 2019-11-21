#!/bin/bash
#Programmer: dan
#Filename: hello.sh
#Date: Nov.20, 2019
#Objective: Write a simple greetings shell script 

read -p "What is your name?  " name
if [ -z "$name" ]; then
  echo "no name entered."
  exit 1
fi

#if first letter of name is lowercase, upper it, via Here Strings operator and string 
name="$(tr '[:lower:]' '[:upper:]' <<< ${name:0:1})${name:1}"

#generate current hour from date "hour format control"
hour=$(date "+%H")

case "$hour" in
  0?|1[01]) echo "Good morning $name!";;
  1[2-7]) echo "Good afternoon $name!";;
  *) echo "Good night $name, sleep well!";;
esac


