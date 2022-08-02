#!/bin/bash

set -e
shopt -s globstar

source .config

if find . -name "*~" | grep . &>/dev/null
then
	echo "backups found in compilation dir; please fix"
elif [ ! -d "bin/zip/data" ]
then
	echo "bin/zip/data does not exist; please fix"
elif [ -z ${1+x} ]
then
	echo "installing"

	if find "$GAME_DATA_DIR" -name "*~" | grep . &>/dev/null
	then
		echo "existing backups found; aborting"
	else
		cp -b -R bin/zip/data/* "$GAME_DATA_DIR"

		cp bin/zip/user.empire_script.txt "$GAME_SCRIPTS_DIR"

		echo "success!"
	fi
elif [ "$1" == "-u" ]
then
	echo "uninstalling"

	if find "$GAME_DATA_DIR" -name "*~" | grep . &>/dev/null
	then
		for i in "$GAME_DATA_DIR"/**/*~; do
			mv "$i" "${i::-1}"
		done

		cd bin/zip/data
		for i in *.pack; do
			rm "$GAME_DATA_DIR/$i"
		done
		cd -

		rm "$GAME_SCRIPTS_DIR/user.empire_script.txt"

		echo "success!"
	else
		echo "no backups found; aborting"
	fi
else
	echo "no arguments to install, -u to uninstall"
fi

read -n 1 -s -r -p "Press any key to continue"
echo
