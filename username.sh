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

echo "Enter a five-digit ZIP code: "
read ZIP
while echo $ZIP | egrep -v "^[0-9]{5}$" > /dev/null 2>&1
do
	echo "You must enter a valid ZIP code - five digits only!"
	echo "Enter a five-digit ZIP code: "
	read ZIP
done
echo "Thank you"
