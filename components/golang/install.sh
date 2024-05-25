#!/bin/bash
echo " ██████╗ ██╗    ██╗██╗     ███████╗████████╗ █████╗ ██╗  ██╗███████╗"
echo "██╔═══██╗██║    ██║██║     ██╔════╝╚══██╔══╝██╔══██╗██║ ██╔╝██╔════╝"
echo "██║   ██║██║ █╗ ██║██║     ███████╗   ██║   ███████║█████╔╝ █████╗  "
echo "██║   ██║██║███╗██║██║     ╚════██║   ██║   ██╔══██║██╔═██╗ ██╔══╝  "
echo "╚██████╔╝╚███╔███╔╝███████╗███████║   ██║   ██║  ██║██║  ██╗███████╗"
echo " ╚═════╝  ╚══╝╚══╝ ╚══════╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝"
echo "https://owlstake.com"

# Set default version if no input parameter is provided
DEFAULT_VERSION="1.22.3"
VERSION=${1:-$DEFAULT_VERSION}

# Remove any previously installed Go versions
sudo rm -rf /usr/local/go

# Download and install the specified Go version
curl -Ls https://go.dev/dl/go$VERSION.linux-amd64.tar.gz | sudo tar -xzf - -C /usr/local

# Update the PATH by adding the Go path to the configuration file
echo 'export PATH=$PATH:/usr/local/go/bin' | sudo tee /etc/profile.d/golang.sh > /dev/null
echo 'export PATH=$PATH:$HOME/go/bin' >> $HOME/.profile

# Inform about successful installation
echo "Golang version $VERSION has been successfully installed"
