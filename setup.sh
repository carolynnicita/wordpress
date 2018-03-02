#!/bin/bash

set -e

#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

# Updating all packages
echo "Updating packages"
yum -y update

# Installing docker
echo "Installing Docker"
yum -y install docker
echo "Starting Docker service"
service docker start

echo "Setup complete"
