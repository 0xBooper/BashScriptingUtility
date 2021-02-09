#!/bin/bash

#Function to check user input
function check () {
	case $1 in
		A | a)
			createBash
		;;
		B | b)
			removeBash
		;;
		C | c)
			createBashNS
		;;
		*)
			cd BashUtility
			echo "Wrong input.."
			bash rebash.sh
		;;
	esac
}

#Function for creating bash scripts with setup
function createBash () {
	echo "Please input the name and .sh extension of the script."	
        read FILE_NAME
	echo "Warning: Script will be made in the root directory."
	touch $FILE_NAME && chmod +x $FILE_NAME
	if [ -e $FILE_NAME ]
	then
		echo "Setting file up for use..."
		echo  "#!/bin/bash" > $FILE_NAME
		echo "File has been set up."
		echo  "Your file is fully set up and rpeady to use!"
		echo "Thank you for using our services!"
	else
		echo "Creation has failed, try to check permissions."
	fi
}


#Function for removing bash scripts
function removeBash () {
	echo "Please enter the name of the script with the .sh extension."
	read FILE_NAME
	if [ -e $FILE_NAME ]
	then
		echo "Warning: Your file MUST be in the root directory first."
		rm $FILE_NAME
		echo -n "Your script has been deleted."
		echo "Thanks for using our services!"
	else
		echo "Error: File is not in the root directory. Please move it to the root directory ( ~ )"
	fi

}

                             
#Function for creating bash scripts with no setup
function createBashNS () {
	echo "Please enter the name of the script with the .sh extension."
	read $FILE_NAME
	echo "Warning: File will be made in the root directory."
	echo "Creating..."
	touch $FILE_NAME &&  chmod +x $FILE_NAME
	if [ -e $FILENAME ]
	then
		echo "File has been made with no first time setup."
		echo "Thanks for using our services!"
	else
		echo "Creation has failed. Check permissions."
	fi
}


#Run-up program:
cd ~
echo "---Welcome to the Bash Script Utility----"
echo "---Please enter what you wish to do.-----"
echo "-------Create a bash script [A]----------"
echo "-------Remove a bash script [B]----------"
echo "--Create a bash script with no setup [C]-"

read USERINPUT
check $USERINPUT

