#!/bin/bash

source .config

echo "Zipping..."

mkdir -p $zip_dir
cp -r $pack_output_dir $zip_dir
cp -r $scripts_dir/* $zip_dir
cp -r 3rd_party/* $zip_dir
cd $zip_dir && $zip -q -r ../$save_zip_as *
cd -

read -n 1 -s -r -p "Done! Press any key to continue"
echo
