#!/bin/bash

echo "Hello world!"
# whoami

# this is a variable
# it does not work if you let
# spaces between = and the values
# like var = "lol"

name="Jammy"
age=14

# in order to use it
# we add a $ in front of the 
# variable name

# name=$1
# age=$2

# echo $#

echo "Script's name: $0"

# echo "Enter your name and age:"

# read name
# read age

# echo "$name is $age years old."

# Arrays

transport=('bus' 'car' 'train')

# Output all elements

echo "${transport[@]}"

unset transport[1]

transport[1]='bike'

echo "${transport[@]}"