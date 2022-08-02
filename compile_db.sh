#!/bin/bash

source .config

echo "Compiling db..."

rm -r -f $db_output_dir
mkdir -p $db_output_dir
$db_pack $db_input_dir $db_output_dir

read -n 1 -s -r -p "Done! Press any key to continue"
echo
