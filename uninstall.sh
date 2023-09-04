#!/bin/bash
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script as root or using sudo."
  exit 1
fi

custom_script_name="start"
custom_remove_name="remove"
install_dir="/usr/local/bin"

rm "$install_dir/$custom_script_name"
rm "$install_dir/$custom_remove_name"
echo "Script '$custom_script_name' & '$custom_remove_name' has been uninstalled. You can no longer run it from anywhere using: $custom_script_name"

