#! /bin/bash
# username.sh
# Trevor Kling
echo "Enter a username: "
read USER
while echo $USER | egrep -v "^[a-z][a-z0-9_]{2,11}$" > /dev/null 2>&1
do
	if [ echo $USER | egrep -v "^[a-z]" > /dev/null 2>&1 ]
	then
		echo "Usernames must begin with a lowercase letter."
	elif [ echo $USER | egrep -v "^[a-z0-9_]{1,12}" > /dev/null 2&>1 ]
	then
		echo "Usernames must be shorter than 13 characters."
	elif [ echo $USER | egrep -v "^[a-z0-9_]{3,}" > /dev/null 2&>1 ]
	then
		echo "Usernames must be at least 3 characters."
	else
		echo "Usernames may only contain lowercase letters, numbers, and underscores"
	fi
	read USER
done
echo "Thank you"

