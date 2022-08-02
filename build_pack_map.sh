#!/bin/bash

source .config

echo | ./compile_db_map.sh

echo "Building pack for map..."

mkdir -p $pack_output_dir
$build_pack $pack_output_dir/$save_pack_map_as $pack_type $pack_map_input_dir

read -n 1 -s -r -p "Done! Press any key to continue"
echo
