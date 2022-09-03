#!/bin/bash

set -e
shopt -s globstar

source .config

if [ ! -d "bin/zip/data" ]
then
	echo "bin/zip/data does not exist; please fix"
elif [ -z ${1+x} ]
then
	echo "installing"

	cp -r bin/zip/data/* "$GAME_DATA_DIR"

	cp bin/zip/user.empire_script.txt "$GAME_SCRIPTS_DIR"

	echo "success!"
elif [ "$1" == "-u" ]
then
	if [ ! -d "$GAME_DATA_DIR/$campaign_dir" ]
	then
		echo "$GAME_DATA_DIR/$campaign_dir does not exist; aborting"
	elif [ ! -d "$GAME_DATA_DIR/$map_dir" ]
	then
		echo "$GAME_DATA_DIR/$map_dir does not exist; aborting"
	elif [ ! -f "$GAME_SCRIPTS_DIR/user.empire_script.txt" ]
	then
		echo "$GAME_SCRIPTS_DIR/user.empire_script.txt does not exist; aborting"
	else
		echo "uninstalling"

		cd bin/zip/data
		for i in *.pack; do
			rm "$GAME_DATA_DIR/$i"
		done
		cd -

		rm -rf "$GAME_DATA_DIR/$campaign_dir"
		rm -rf "$GAME_DATA_DIR/$map_dir"
		rm "$GAME_SCRIPTS_DIR/user.empire_script.txt"

		echo "success!"
	fi
else
	echo "no arguments to install, -u to uninstall"
fi

read -n 1 -s -r -p "Press any key to continue"
echo
