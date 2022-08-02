#!/bin/bash

source .config

echo "Compiling db for map..."

rm -r -f $db_map_output_dir
mkdir -p $db_map_output_dir
$db_pack $db_map_input_dir $db_map_output_dir

read -n 1 -s -r -p "Done! Press any key to continue"
echo
