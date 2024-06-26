#!/bin/bash

echo " ██████╗ ██╗    ██╗██╗     ███████╗████████╗ █████╗ ██╗  ██╗███████╗"
echo "██╔═══██╗██║    ██║██║     ██╔════╝╚══██╔══╝██╔══██╗██║ ██╔╝██╔════╝"
echo "██║   ██║██║ █╗ ██║██║     ███████╗   ██║   ███████║█████╔╝ █████╗  "
echo "██║   ██║██║███╗██║██║     ╚════██║   ██║   ██╔══██║██╔═██╗ ██╔══╝  "
echo "╚██████╔╝╚███╔███╔╝███████╗███████║   ██║   ██║  ██║██║  ██╗███████╗"
echo " ╚═════╝  ╚══╝╚══╝ ╚══════╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝"
echo "https://owlstake.com"
set -e

GREEN="\033[32m"
NORMAL="\033[0m"
VERSION=$1

if [ "$VERSION" == "" ]; then
    VERSION="2.17.0"
fi

export VERSION="$VERSION" \
&& sudo apt update \
&& sudo apt install docker.io curl -y \
&& sudo systemctl start docker \
&& sudo systemctl enable docker \
&& sudo wget -O /usr/local/bin/docker-compose https://github.com/docker/compose/releases/download/v$VERSION/docker-compose-`uname -s`-`uname -m` \
&& sudo chmod +x /usr/local/bin/docker-compose

echo "-------------------------------------------------------------------"
echo -e "$GREEN DOCKER v$VERSION INSTALLED.$NORMAL"
echo "-------------------------------------------------------------------"