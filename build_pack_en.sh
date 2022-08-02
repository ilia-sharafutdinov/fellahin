#!/bin/bash

source .config

echo | ./compile_loc.sh

echo "Building pack localization..."

mkdir -p $pack_output_dir
$build_pack $pack_output_dir/$save_pack_en_as $pack_en_type $pack_en_input_dir

read -n 1 -s -r -p "Done! Press any key to continue"
echo
