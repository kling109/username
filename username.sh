#! /bin/bash
# username.sh
# Trevor Kling
echo "Enter a username.  Usernames must contain only lowercase letters, numbers, and the underscore character.
	  Every username must start with a lowercase letter, and be between 3 and 12 characters long."
read USER
while echo $USER | egrep -v "^[a-z][a-z0-9_]{2,11}$" > /dev/null 2>&1
do
	echo "That is not a valid username.  Usernames must contain only lowercase letters, numbers, and the underscore character.
	     Every username must start with a lowercase letter, and be between 3 and 12 characters long."
	read USER
done
echo "Thank you"

