#Emily Chan
#! /bin/bash
# username.sh
# A bash script to check whether a string satisfies the requirements for a username.
# The requirements for a username are:
# The only characters that can be used are
# * lower case letters,
# * digits, and 
# * the underscore character 
# It must start with a lower case letter
# It must contain at least three but no more than 12 characters

echo "Enter a username: "
read USERNAME
while echo $USERNAME |  egrep -v "^[a-z][a-z_0-9]{2,11}$" > /dev/null 2>&1
do
	echo "You must enter a valid username (only lowercase letters, digits and underscore characters allowed, must start with lowercase letter, and must contain at least three but no more than 12 characters"
	echo "Enter a username: "
	read USERNAME
done
echo "Thank you"
