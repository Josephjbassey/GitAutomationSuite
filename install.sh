#!/bin/bash
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script as root or using sudo."
  exit 1
fi

custom_script_name="start"
custom_script_source="script.sh"
install_dir="/usr/local/bin"

cp "$custom_script_source" "$install_dir/$custom_script_name"
chmod +x "$install_dir/$custom_script_name"

echo "Script '$custom_script_name' has been installed. You can now run it from anywhere using: $custom_script_name"
echo "Installation Script Designed by faithfull https://github.com/faithful1ofall"
echo "Developed by Joseph John https://github.com/Josephjbassey"
