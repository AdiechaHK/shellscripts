#!/bin/sh

# Configuration.
SRC_PATH=~/shell-scripts

if [ $# <> 2 ]
then
	echo "Required Exactly 2 argument but found $# argument(s)
	if you still need more help run with 'help'"

	if [ $# == 1 ] && [ $1 == "help" ]
	then
		echo "
This command will help you to create a command

Argument#1 :: will be file path of shell script (.sh) file
Argument#2 :: will be name of the command you expect to be run as
		"
	fi
	exit
fi

if [ -f $1 ]
then
	if [ ${1: -3} == ".sh" ]
	then
		FILENAME=$(basename $1)
		NEW_FILE_NAME=$(basename ${1%.*})_$(date +%d_%m_%Y_%s).sh
		if [ $2 == '' ]
		then
			echo "No argument"
		else
			echo "Ok to proceed"
		fi
		# cp $1 $SRC_PATH/$NEW_FILE_NAME
		# chmod 0777 $SRC_PATH/$NEW_FILE_NAME
		# ln -s $SRC_PATH/$NEW_FILE_NAME $SRC_PATH/bin/$2
	else
		echo "Only accept shell script files."
	fi
else
	echo "Oops File Not found."
fi