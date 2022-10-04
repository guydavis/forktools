#! /usr/bin/env bash

# Test for curl installation
CURLFOUND=$( type -P curl )
if [[ $CURLFOUND != '' ]]; then
  echo "Curl installed.  Proceeding with forktools installation."
else
  echo "Curl is not installed.  Curl is required for forktools to be able to make required RPC calls."
  echo "Aborting install script.  Please run the following commands and then run this install script again:"
  echo
  echo "sudo apt update"
  echo "sudo apt upgrade -y"
  echo "sudo apt install curl"
  exit
fi

chmod +x $PWD/install*.sh
$PWD/install2ft.sh
