#!/bin/bash

source .config

echo "Compiling startpos..."

mkdir -p $startpos_output_dir
$xml2esf $startpos_input_dir $startpos_output_dir/$save_startpos_as

read -n 1 -s -r -p "Done! Press any key to continue"
echo
