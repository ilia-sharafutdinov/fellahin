#!/bin/bash

source .config

echo "Compiling db for AI and diplomacy..."

rm -r -f $db_ai_and_diplomacy_output_dir
mkdir -p $db_ai_and_diplomacy_output_dir
$db_pack $db_ai_and_diplomacy_input_dir $db_ai_and_diplomacy_output_dir

read -n 1 -s -r -p "Done! Press any key to continue"
echo
