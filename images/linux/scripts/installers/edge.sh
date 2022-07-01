#!/bin/bash -e
################################################################################
##  File:  edge.sh
##  Desc:  Installs Edge
################################################################################

# Import Microsoft Edge GPG Key and Repository
wget -O- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > /usr/share/keyrings/microsoft-edge.gpg

# Import the Microsoft Edge Repo
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft-edge.gpg] https://packages.microsoft.com/repos/edge stable main' > /etc/apt/sources.list.d/microsoft-edge.list

apt update

apt install microsoft-edge-stable

invoke_tests "Browsers" "Edge"
