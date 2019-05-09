#!/bin/bash
set -e

#functions

update() {
echo "Starting full system update..."
sudo apt-get update 
sudo apt-get upgrade
}

clean(){
echo "Cleaning up everything..."
sudo apt-get autoremove -yy
sudo apt-get autoclean
}

leave(){
echo "-----------------"
echo "-Update Complete-"
echo "-----------------"
exit
}

help(){
cat << _EOF_
app is a tool copied from Collins, just to learn something about bash commands.
Hope you'll enjoy!

Commands:
	app = full sistem update and clean
	
	app --clean = full sistem cleaning
	
	app -- update = full sistem update

	app --leave = just leave


This is all for the moment
_EOF_
}

#execution

echo "app --debian/Ubuntu based distros update tool(version 0.1)"

#update and clean

if [ "$1" == "--clean" ]; then
	clean
fi

if [ "$1" == "--update" ]; then
	update
fi

if [ "$1" == "--leave" ]; then
	leave
fi

if [ "$1" == "--help" ]; then
	help
	exit
fi

if [ "$1" != "--clean" | "--update" | "--leave" | "--help" ]; then
	echo "App error, invalid Syntax"
	exit 
fi


	













