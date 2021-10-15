#!/bin/bash

INSTALL_SCRIPT=/tmp/install_wasmedge.sh
INSTALL_PATH="$HOME/.wasmedge"
INSTALL_VERSION=0.8.2
SUDO=

wget -O "$INSTALL_SCRIPT" "https://raw.githubusercontent.com/WasmEdge/WasmEdge/3bc15abe573b0cb27cb88879ad80ae8285d5c6e5/utils/install.sh" 
[ "$GITHUB_ACTIONS" == true ] && SUDO=sudo
$SUDO bash "$INSTALL_SCRIPT" -p "$INSTALL_PATH" --version="$INSTALL_VERSION"
