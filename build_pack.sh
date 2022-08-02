#!/bin/bash

source .config

echo | ./compile_db.sh

echo "Building pack..."

mkdir -p $pack_output_dir
$build_pack $pack_output_dir/$save_pack_as $pack_type $pack_input_dir

read -n 1 -s -r -p "Done! Press any key to continue"
echo
