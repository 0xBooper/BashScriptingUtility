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
		E | e)
			echo "Exitting.."
			exit 0
		;;
		S | s)
			moreSetup
		;;

		I | i)
			info
		;;
                *)
			cd BashUtility
			echo "Wrong input.."
			bash rebash.sh
		;;
	esac
}

#Function about.. the information about this utility
function info () {
	echo "This utility is currently version 1.4.1-C."
	echo "For further info on this utility, see the VERSION.md file."
	echo "Also, thanks for using this utility!"
	echo "Made by 0xBooper, for people who like being lazy and using a utility for creating files. :D"
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

# Function for setting up existing files
function moreSetup () {
	echo "First, input the file you have made."
	local USERFILE="A"
	read USERFILE
	if [ -e $USERFILE ]
	then

		USERFILETEXT=$(cat $USERFILE)
		if [ $USERFILETEXT == "#!/bin/bash" ]
		then
			echo "Select what setup option you want to do: "
			echo "Setup with variables ready [V]"
			local USERINPUT="A"
			read USERINPUT
			case $USERINPUT in
				V | v)
				echo "Input the name of the variable"
				read VARNAME
				bash -c "printf '\n%s\n' >> $USERFILE"
				echo -n $VARNAME >> $USERFILE
				echo -n "=" >> $USERFILE
				echo "Input the value of the variable."
				read VARVALUE
				echo -n $VARVALUE >> $USERFILE
				echo "The new file looks like: "
				cat $USERFILE
				;;
			esac
		else
			echo "#!/bin/bash" >  $USERFILE
			echo "Select what setup option you want to do: "
			echo "Setup with variables ready [V]"
			local USERINPUT="FLOOP!"
			read USERINPUT
			case $USERINPUT in
				V | v)
				echo "Input the name of the variable"
				read VARNAME
				bash -c "printf '\n%s\n' >> $USERFILE"
				echo -n $VARNAME >> $USERFILE
				echo -n "=" >> $USERFILE
				echo "Input the value of the variable."
				read VARVALUE
				echo -n $VARVALUE >> $USERFILE
				echo "The new file looks like: "
				cat $USERFILE
				;;
			esac
		fi
	else
		echo "Your file is not in the root directory, "
		echo "your file does not exist."

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
		echo "Your script has been deleted."
		echo "Thanks for using our services!"
	else
		echo "Error: File is not in the root directory. Please move it to the root directory ( ~ )"
	fi

}

                             
#Function for creating bash scripts with no setup
function createBashNS () {
	echo "Please enter the name of the script with the .sh extension."
	read FILE_NAME
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


#Start-up program:
cd ~
echo "---Welcome to the Bash Script Utility----"
echo "---Please enter what you wish to do.-----"
echo "-------Create a bash script [A]----------"
echo "-------Remove a bash script [B]----------"
echo "--Create a bash script with no setup [C]-"
echo "--Setup options for an existing file [S]-"
echo "-----Information about this utility [I]--"
echo "--------------Exit [E]-------------------"

read USERINPUT
check $USERINPUT

