#!/bin/bash

source .config

rm -r -f $output_dir/*

echo | ./build_pack.sh
echo | ./build_pack_ai_and_diplomacy.sh
echo | ./build_pack_map.sh
echo | ./build_pack_en.sh
echo | ./compile_startpos.sh
echo | ./compile_regions.sh
echo | ./zip.sh

read -n 1 -s -r -p "Done! Press any key to continue"
echo
