#!/bin/bash

source .config

echo "Compiling regions..."

mkdir -p $regions_output_dir
$xml2esf $regions_input_dir $regions_output_dir/$save_regions_as

cp $regions_copy_input_dir/* $regions_output_dir

read -n 1 -s -r -p "Done! Press any key to continue"
echo
