#!/bin/bash




function bashA () {

	echo -n "Please input the name and .sh extension of the script."	read FILE_NAME

	echo "Warning: Script will be made in the root directory."

	touch $FILE_NAME && chmod +x $FILE_NAME

	echo "Setting file up for use..."

	echo  "#!/bin/bash" > $FILE_NAME

	echo "File has been set up."

	echo -n "Your file is fully set up and rpeady to use!"

	echo "Thank you for using our services!"

}

             

function bashB () {

	echo -n "Please enter the name of the script with the .sh extension."

	read FILE_NAME

	if [ -e $FILE_NAME ]

	then

		echo "Warning: Your file MUST be in the root directory first."

		rm $FILE_NAME

		echo -n "Your script has been deleted."

		echo "Thanks for using our services!"

	else

		echo "Error: File is not in the root directory."

	fi

}

                             

function bashC () {

	echo -n "Please enter the name of the script with the .sh extension."

	read $FILE_NAME

	echo "Warning: File will be made in the root directory."

	echo "Creating..."

	touch $FILE_NAME &&  chmod +x $FILE_NAME

	echo "File has been made with no first time setup."

	echo -n "Thanks for using our services!"

}

cd ~

echo "---Welcome to the Bash Script Utility----"

echo "---Please enter what you wish to do.-----"

echo "-------Create a bash script [A]----------"

echo "-------Remove a bash script [B]----------"

echo "--Create a bash script with no setup [C]-"

read USERINPUT

case $USERINPUT in

	A | a)

		bashA

	;;

	B | b)

		bashB

	;;

	C | c)

		bashC

	;;

	*)

		echo -n "Wrong input.."
		
                chmod +x rebash.sh
                ./rebash.sh
	;;

esac
