#!/bin/bash

source .config

echo | ./compile_db_ai_and_diplomacy.sh

echo "Building pack for AI and diplomacy..."

mkdir -p $pack_output_dir
$build_pack $pack_output_dir/$save_pack_ai_and_diplomacy_as $pack_type $pack_ai_and_diplomacy_input_dir

read -n 1 -s -r -p "Done! Press any key to continue"
echo
