#!/bin/bash

source .config

echo "Compiling loc..."

rm -r -f $loc_output_dir
mkdir -p $loc_output_dir
$tsv2loc $loc_input_dir $loc_output_dir

read -n 1 -s -r -p "Done! Press any key to continue"
echo
